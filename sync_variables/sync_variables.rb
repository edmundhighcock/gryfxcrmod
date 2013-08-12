require 'helper'
CodeRunner.setup_run_class('gryfx')
#CodeRunner::Trinity.get_input_help_from_source_code(ENV['TRINITY_SOURCE'])
#CodeRunner::Trinity.update_defaults_from_source_code(ENV['TRINITY_SOURCE'])
#CodeRunner::Gryfx.synchronise_variables(ENV['GRYFX_SOURCE'])
#CodeRunner::Gryfx.update_defaults_from_source_code(ENV['GRYFX_SOURCE'])


CodeRunner.setup_run_class('gs2')

CodeRunner::Gryfx.rcp.namelists.each do |namelist, namelist_hash|
	namelist_hash[:variables].each do |var, varhash|
		if CodeRunner::Gs2.rcp.namelists[namelist] and CodeRunner::Gs2.rcp.namelists[namelist][:variables][var]
			varhash[:help] = CodeRunner::Gs2.rcp.namelists[namelist][:variables][var][:help]
			varhash[:description] = CodeRunner::Gs2.rcp.namelists[namelist][:variables][var][:description]
			CodeRunner::Gryfx.save_namelists
		end
	end
end
