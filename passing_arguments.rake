desc 'Demo passing argumnets using ENV'
task :print_name_using_env do
  name = ENV['NAME']
  puts "Name via ENV #{name}"
end

# rake print_name_using_named_args[deepak,'kumar']
desc 'Demo passing argumnets using named arguments'
task :print_name_using_named_args, :arg1, :arg2 do |t, args|
  puts "Name via ENV #{args.arg1} #{args.arg2}"
end
