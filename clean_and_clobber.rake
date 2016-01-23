require 'rake/clean'

desc "demo clean and clobber tasks"
task :demo_clean_and_clobber do
  touch "output.back"
  touch "output"
end

CLEAN.include("output.back")
CLOBBER.include("output")
