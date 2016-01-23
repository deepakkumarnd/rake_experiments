file "log/.done" => FileList["log/*.log"] do
  puts "backing up logs"
  touch "log/.done"
end

desc "backup logs"
task :backup => "log/.done"
