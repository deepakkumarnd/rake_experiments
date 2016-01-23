desc 'start service'
task :start do
  puts 'starting service'
end

desc 'stop service'
task :stop do
  puts 'stopping service'
end

desc 'restart service'
task :restart => [:stop, :start] do
  puts 'service restarted'
end

desc 'say hello'
task :hello do
  ruby 'hello.rb'
end
