class CodeRunner
	#  This is a customised subclass of the CodeRunner::Run  class which allows CodeRunner to run and analyse the gyrofluid GPU turbulent transport solver Gryfx.
	#
	#  It  generates the Gryfx input file, and both analyses the results and allows easy plotting of them. 
	CodeRunner.setup_run_class('gs2')
	class Gryfx < Gs2
		#include CodeRunner::SYSTEM_MODULE



		# Where this file is
		@code_module_folder = folder = File.dirname(File.expand_path(__FILE__)) # i.e. the directory this file is in

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
			beginning = sprintf("%2d:%d %-60s %1s:%2.1f(%s) %3s%1s",  @id, @job_no, name, @status.to_s[0,1],  @run_time.to_f / 60.0, @nprocs.to_s, percent_complete, "%")
			if ctd
				#beginning += sprintf("Q:%f, Pfusion:%f MW, Ti0:%f keV, Te0:%f keV, n0:%f x10^20", fusionQ, pfus, ti0, te0, ne0)
			end
			beginning += "  ---#{@comment}" if @comment
			beginning
		end


		#  This is a hook which gets called just before submitting a simulation. It sets up the folder and generates any necessary input files.
		def generate_input_file
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
			get_status
			#p ['id is', id, 'ctd is ', ctd]
			if ctd
				calculate_results 
			end
			#p ['fusionQ is ', fusionQ]
		end

		def get_status
			if @running
				@status = :Incomplete
			else
				get_completed_timesteps
				if percent_complete = 100.0*@completed_timesteps.to_f/(nstep/nwrite)  > 5.0
					@status = :Complete
				else
					@status = :Failed
				end
			end
		end

		def get_completed_timesteps
			if FileTest.exist?(@run_name  + '.cdf')
				@completed_timesteps = gsl_vector('t').size
			else
				@completed_timesteps = 0
			end
		end

		def netcdf_filename
			@directory + '/' +  @run_name + '.cdf'
		end

		def calculate_results
		end

	end
end
