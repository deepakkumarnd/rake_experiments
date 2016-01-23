require "rake/phony"

desc "non file dependency"
task :intermediate => [:phony] do |t|
  puts "Running #{t.name}"
end

desc "Phony task demo"
file "final.out" => ["source.c", :intermediate] do |f|
  touch f.name
end
