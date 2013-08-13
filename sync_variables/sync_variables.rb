require 'helper'
CodeRunner.setup_run_class('gryfx')

###################################################################################
# Code to analyse the source code to look for new input variables... very imperfect
################################################################################

#CodeRunner::Gryfx.synchronise_variables(ENV['GRYFX_SOURCE'])
CodeRunner::Gryfx.update_defaults_from_source_code(ENV['GRYFX_SOURCE'])


############################################################
#  Attempt to copy help from equivalent variables in GS2
###########################################################

#CodeRunner.setup_run_class('gs2')

#CodeRunner::Gryfx.rcp.namelists.each do |namelist, namelist_hash|
	#namelist_hash[:variables].each do |var, varhash|
		#if CodeRunner::Gs2.rcp.namelists[namelist] and CodeRunner::Gs2.rcp.namelists[namelist][:variables][var]
			#varhash[:help] = CodeRunner::Gs2.rcp.namelists[namelist][:variables][var][:help]
			#varhash[:description] = CodeRunner::Gs2.rcp.namelists[namelist][:variables][var][:description]
			#CodeRunner::Gryfx.save_namelists
		#end
	#end
#end

