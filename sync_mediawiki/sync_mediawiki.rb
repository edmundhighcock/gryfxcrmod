require 'helper'
CodeRunner.setup_run_class('gryfx')

raise "curl failed" unless system %[curl 'http://sourceforge.net/apps/mediawiki/gyrokinetics/index.php?title=Gryfx_Input_Parameters&action=edit' | sed 's/&amp;/\&/g' | sed 's/&quot;/"/g' | sed 's/&gt;/>/g' | sed 's/&lt;/</g'  | sed 's/&nbsp;/ /g' > gryfx_mediawiki.txt]
CodeRunner::Gryfx.read_mediawiki_documentation('gryfx_mediawiki.txt')
CodeRunner::Gryfx.write_mediawiki_documentation('gryfx_mediawiki.txt')
system 'kwrite gryfx_mediawiki.txt' or system '/Applications/TextEdit.app/Contents/MacOS/TextEdit gryfx_mediawiki.txt' 
