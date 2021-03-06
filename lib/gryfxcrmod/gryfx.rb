class CodeRunner
	#  This is a customised subclass of the CodeRunner::Run  class which allows CodeRunner to run and analyse the gyrofluid GPU turbulent transport solver Gryfx.
	#
	#  It  generates the Gryfx input file, and both analyses the results and allows easy plotting of them. 
	CodeRunner.setup_run_class('gs2')
  class Gs2
    # This is necessary because the restart
    # parameter overrwrites this function in Gryfx
    alias :set_restart :restart
  end
	class Gryfx < Gs2
		#include CodeRunner::SYSTEM_MODULE



		# Where this file is
		@code_module_folder = File.dirname(File.expand_path(__FILE__)) # i.e. the directory this file is in

		# Use the Run::FortranNamelist tools to process the variable database
		setup_namelists(@code_module_folder)
		require 'gryfxcrmod/namelist_tools'
		#require 'trinitycrmod/graphs'

		################################################
		# Quantities that are read or determined by CodeRunner
		# after the simulation has ended
		###################################################

		@results = []

		@code_long="Gryfx Gyrofluid Solver"

		@run_info=[:time, :is_a_restart, :restart_id, :restart_run_name, :completed_timesteps, :percent_complete]

		@uses_mpi = false

		@modlet_required = false
		
		@naming_pars = []

		#  Any folders which are a number will contain the results from flux simulations.
		@excluded_sub_folders = []

		#  A hook which gets called when printing the standard run information to the screen using the status command.
		def print_out_line
			#p ['id', id, 'ctd', ctd]
			#p rcp.results.zip(rcp.results.map{|r| send(r)})
			name = @run_name
			name += " (res: #@restart_id)" if @restart_id
			name += " real_id: #@real_id" if @real_id
			beginning = sprintf("%2d:%d %-60s %1s:%2.1f(%s) %3s%1s ",  @id, @job_no, name, @status.to_s[0,1],  @run_time.to_f / 60.0, @nprocs.to_s, percent_complete, "%")
			if ctd
				#beginning += sprintf("Q:%f, Pfusion:%f MW, Ti0:%f keV, Te0:%f keV, n0:%f x10^20", fusionQ, pfus, ti0, te0, ne0)
				 if @nonlinear_mode == "off"
						beginning += sprintf("%3.2e %3.2e %4s", 
						 @fastest_growing_mode, @max_growth_rate, 
						 @freq_of_max_growth_rate||0.0)  rescue ""
				 elsif @nonlinear_mode == "on"
			# 		 p @hflux_tot_stav
					 beginning += "       sat:#{saturated.to_s[0]}"  if not @saturated.nil?
					 beginning += sprintf(" hflux:%1.2e", @hflux_tot_stav) if  @hflux_tot_stav 
					 beginning += sprintf("+/-%1.2e", @hflux_tot_stav_error) if  @hflux_tot_stav_error
					 beginning += sprintf(" momflux:%1.2e", @es_mom_flux_stav.values.sum) if @es_mom_flux_stav and @es_mom_flux_stav.values[0]
					 beginning += '  SC:' + @spectrum_check.map{|c| c.to_s}.join(',') if @spectrum_check 
					 beginning += '  VC:' + @vspace_check.map{|c| sprintf("%d", ((c*10.0).to_i rescue -1))}.join(',') if @vspace_check 
				 end
			end
			beginning += "  ---#{@comment}" if @comment
			beginning
		end

    def set_restart(new_run)
      eputs 'Restarting ' + @run_name
      #(rcp.variables).each{|v| new_run.set(v, send(v)) if send(v)}
      #@naming_pars.delete(:preamble)
      #SUBMIT_OPTIONS.each{|v| new_run.set(v, self.send(v)) unless new_run.send(v)}
      #new_run.is_a_restart = true
      #new_run.restart_id = @id
      #new_run.restart_run_name = @run_name
      #@runner.nprocs = @nprocs if @runner.nprocs == "1" # 1 is the default
      #new_run.run_name = nil
      #new_run.naming_pars = @naming_pars
      #new_run.update_submission_parameters(new_run.parameter_hash_string, false) if new_run.parameter_hash
      #new_run.naming_pars.delete(:restart_id)
      #new_run.generate_run_name
      #copy_restart_files(new_run)
      super(new_run)
      new_run.restart = "on"
      # Gryfx automatically configures GS2 for restart so here we set the GS2
      # parameters to default
      new_run.delt_option = "default"
      new_run.ginit_option = "noise"
      new_run
    end

    def copy_restart_files(new_run)
      eputs 'Copying gryfx restart file...', ''
      FileUtils.cp(
        @directory + '/' + @run_name + '.restart.cdf', 
        new_run.directory + '/' + new_run.run_name + '.restart.cdf'
      )
      super(new_run)
    end


		#  This is a hook which gets called just before submitting a simulation. It sets up the folder and generates any necessary input files.
		def generate_input_file
      if @restart_id and (not @is_a_restart or @resubmit_id)   
        @runner.run_list[@restart_id].set_restart(self)
      elsif ((@save_for_restart and @save_for_restart.fortran_true?) or
             (@save_for_restart_new and @save_for_restart_new.fortran_true?)) and 
        (not @is_a_restart or @resubmit_id)
        @restart_dir = "nc"
        FileUtils.makedirs @restart_dir
        @restart_file = "#@run_name.nc"
      end
      @avail_cpu_time = (@wall_mins - 1.0) * 60.0 if @wall_mins
				write_input_file
		end

		#  This command uses the infrastructure provided by Run::FortranNamelist, provided by CodeRunner itself.
		def write_input_file
			File.open(@run_name + ".in", 'w'){|file| file.puts input_file_text}
		end

		# Parameters which follow the Trinity executable, in this case just the input file.
		def parameter_string
			@run_name + ".in"
		end

		def parameter_transition
		end


		@source_code_subfolders = []

		# This method, as its name suggests, is called whenever CodeRunner is asked to analyse a run directory. This happens if the run status is not :Complete, or if the user has specified recalc_all(-A on the command line) or reprocess_all (-a on the command line).
		#
		def process_directory_code_specific
			@grid_option = "box" # For compatibility with the GS2 routines
			@write_phi_over_time  = ".true." # For compatibility with the GS2 routines
			get_status
			#p ['id is', id, 'ctd is ', ctd]
			if ctd
				#calculate_results 
			end
			#p ['fusionQ is ', fusionQ]
		end


		def get_status
			if @running
				unless @status==:Queueing
					@status = :Incomplete
					get_completed_timesteps
					@percent_complete = 100.0*@completed_timesteps.to_f/(nstep/nwrite) 
					if @completed_timesteps.to_f/(nstep/nwrite) == 1.0
						@status=:Complete
					end

				end
			else
				get_completed_timesteps
				if (@percent_complete = 100.0*@completed_timesteps.to_f/(nstep/nwrite))  > 5.0
					@status = :Complete
				else
					@status = :Failed
				end
			end
		end

		def get_completed_timesteps
			if FileTest.exist?(@run_name  + '.cdf')
        count = 0
        begin
          @completed_timesteps = netcdf_file.var('t').get.size #gsl_vector('t').size
        rescue NetcdfError => err 
          eputs err
          count += 1
          eputs "Retrying: #{count} attempt(s) out of 4"
          sleep 1
          count < 5 ?  retry : raise(err)
        end
			else
				@completed_timesteps = 0
			end
		end

		def netcdf_filename
			@directory + '/' +  @run_name + '.cdf'
		end

    def generate_component_runs
    end
		#def calculate_results
		#end
		
		def calculate_frequencies
			@real_frequencies = FloatHash.new
		end

		def gryfx?
			true
		end

		def code_run_environment
			case @sys
			when /stampede/
				"module load cuda\n module load hdf5\n module load netcdf"
			when /generic_linux/, /macosx/
				"# No configuration necessary"
			end
		end


		def geometric_factors_gsl_tensor(options)
				theta_vec = gsl_vector(:theta, options)
				factors = GSL::Tensor.alloc(6,theta_vec.size)
				values = [:Rplot, :Zplot, :aplot, :Rprime, :Zprime, :aprime].map do |name|
					arr = netcdf_file.var(name).get.to_a
					if options[:periodic]
						arr += [arr[0]]
					end
					arr
				end
				#ep values
				shape = factors.shape
				for i in 0...shape[0]
						unless options[:interpolate_theta]
							for j in 0...shape[1]
								factors[i,j] = values[i][j]
							end
						else
							opts = options.dup
							opts[:interpolate_theta] = nil
							opts[:thetamax] = opts[:thetamin] = nil
							theta_vec_short = gsl_vector(:theta, opts)
							#p 'sizes', [theta_vec_short.size, values[i].to_gslv.size]
							interp = GSL::ScatterInterp.alloc(:cubic, [theta_vec_short, values[i].to_gslv], true, [3.0].to_gslv)
							for j in 0...theta_vec.size
								factors[i,j] = interp.eval(theta_vec[j])
							end
						end
				end
				#ep factors
				return factors
		end


def input_file_header
	<<EOF
!==============================================================================
!  		GRYFX INPUT FILE automatically generated by CodeRunner 
!==============================================================================
!
!  GRYFX is a gyrofluid GPU flux tube initial value turbulence code 
!  which can be used for fusion or astrophysical plasmas.
!  
!  	See http://gyrokinetics.sourceforge.net
!
!  CodeRunner is a framework for the automated running and analysis 
!  of large simulations. 
!
!  	See http://coderunner.sourceforge.net
!
!  Created on #{Time.now.to_s}
!      by CodeRunner version #{CodeRunner::CODE_RUNNER_VERSION.to_s}
!
!==============================================================================

EOF
end

def self.defaults_file_header
	<<EOF1
######################################################################
# Automatically generated defaults file for GRYFX CodeRunner module  #
#                                                                    #
# This defaults file specifies a set of defaults for GRYFX which are #
# used by CodeRunner to set up and run GRYFX simulations.            #
#                                                                    #
# Created #{Time.now.to_s}                                           #
#                                                                    #
######################################################################

@defaults_file_description = ""
EOF1
end

	end
end
