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
			Dir.chdir('test'){system "tar -czf cyclone_miller_ke.tgz cyclone_miller_ke/" unless FileTest.exist?('cyclone_miller_ke.tgz')}
			FileUtils.rm_r(tfolder)
		end
		def test_submission
			CodeRunner.submit(T: false, C: 'gryfx', X: ENV['GRYFX_EXEC'], D: 'test_gryfxcrmod', n: '1', Y: tfolder, p: '{}')
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
		@runner = CodeRunner.fetch_runner(Y: tfolder)
		@run = @runner.run_list[1]
	end
	def test_analysis
		CodeRunner.status(Y: tfolder)
		assert_equal(1, @runner.run_list.size)
		#assert_equal(0.13066732664774272, @runner.run_list[1].max_growth_rate)
		#assert_equal(0.13066732664774272, @runner.run_list[1].growth_rate_at_ky[0.5])
		#assert_equal(:Complete, @runner.run_list[1].status)
	end
	def tfolder
		'test/cyclone_miller_ke'
	end
	def teardown
		FileUtils.rm_rf(tfolder)
	end
end
