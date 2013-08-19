require 'helper'

class TestGryfxcrmod < Test::Unit::TestCase
	def setup
		CodeRunner.setup_run_class('gryfx')
	end
	def test_basics
		assert_equal("gryfx", CodeRunner::Gryfx.rcp.code)
	end
end


if ENV['GRYFX_EXEC']
	class TestSubmission < Test::Unit::TestCase
		def setup
			CodeRunner.setup_run_class('gryfx')
			CodeRunner::Gryfx.make_new_defaults_file('test_gryfxcrmod', 'test/cyclone_miller_ke.in')
			FileUtils.mv('test_gryfxcrmod_defaults.rb', CodeRunner::Gryfx.rcp.user_defaults_location + '/.')
			FileUtils.makedirs(tfolder)
		end
		def tfolder
			'test/cyclone_miller_ke'
		end
		def teardown
			FileUtils.rm(CodeRunner::Gryfx.rcp.user_defaults_location + '/' + 'test_gryfxcrmod_defaults.rb')
			FileUtils.rm(tfolder + '/.CODE_RUNNER_TEMP_RUN_LIST_CACHE')
			FileUtils.rm(tfolder + '/v/id_1/.code_runner_run_data')
			FileUtils.rm(tfolder + '/v/id_1/code_runner_results.rb')
			## Don't uncomment the line below unless you *really* know what you are doing! Replacing the test archive will break many of the tests
			Dir.chdir('test'){system "rm cyclone_miller_ke.tgz; tar -czf cyclone_miller_ke.tgz cyclone_miller_ke/" unless FileTest.exist?('cyclone_miller_ke.tgz')}
			#Dir.chdir('test'){system "rm cyclone_miller_ke.tgz; tar -czf cyclone_miller_ke.tgz cyclone_miller_ke/"} #unless FileTest.exist?('cyclone_miller_ke.tgz')}
			FileUtils.rm_r(tfolder)
		end
		def test_submission
			CodeRunner.submit(T: false, C: 'gryfx', X: ENV['GRYFX_EXEC'], D: 'test_gryfxcrmod', n: '1', Y: tfolder, p: '{}')
			CodeRunner.submit(T: false, C: 'gryfx', X: ENV['GRYFX_EXEC'], D: 'test_gryfxcrmod', n: '1', Y: tfolder, p: '{nstep: 7000, init_amp: 0.5, nonlinear_mode: "on"}')
			CodeRunner::Gryfx.diff_input_files(tfolder + '/v/id_1/v_id_1.in', 'test/cyclone_miller_ke.in')
			CodeRunner.status(Y: tfolder)
		end
	end
else
	puts "\n************************************\nWarning: submission tests not run. Please specify the evironment variable GRYFX_EXEC (the path to the gs2 executable) if you wish to test submission.\n************************************\n"
	sleep 0.1
end

class TestAnalysis < Test::Unit::TestCase
	def setup
		Dir.chdir('test'){assert(system "tar -xzf cyclone_miller_ke.tgz")}
		CodeRunner.run_command('ctaf', j: 2, Y: tfolder)
		@runner = CodeRunner.fetch_runner(Y: tfolder)
		@run = @runner.run_list[1]
	end
	def test_analysis
		CodeRunner.status(Y: tfolder)
		assert_equal(2, @runner.run_list.size)
		assert_equal(0.129, @runner.run_list[1].max_growth_rate.round(3))
		assert_equal(2.0, (@runner.run_list[2].hflux_tot_stav/1.0e4).round(0))
		#assert_equal(0.13066732664774272, @runner.run_list[1].growth_rate_at_ky[0.5])
		#assert_equal(:Complete, @runner.run_list[1].status)
	end
	def test_graphs
		kit = @run.graphkit('phi2_by_ky_vs_time', {ky_index: :all})
		kit.gp.logscale = "y"
		#kit.gnuplot
		kit = @run.graphkit('phi_real_space_surface', {n0: 2})
		assert_equal(6, kit.data.size)
		#kit.gnuplot
		kit = @run.graphkit('phi_real_space_poloidal_plane', {n0: 2, interpolate_theta: 16, interpolate_x: 4, torphi: 0.0})
		kit.gp.view = ["equal xyz", "90,0,3"]
		assert_equal(2, kit.data[0].y.data.shape.size)
		assert_equal(177, kit.data[0].y.data.shape[1])
		
		#kit.gnuplot

	end
	def tfolder
		'test/cyclone_miller_ke'
	end
	def teardown
		FileUtils.rm_rf(tfolder)
	end
end
