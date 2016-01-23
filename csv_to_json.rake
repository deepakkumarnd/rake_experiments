require 'csv'
require 'json'

def parse_csv(csv_filename)
  CSV::read(csv_filename)
end

def convert_to_hash(data)
  keys = data.first
  hash = { users: [] }

  len = keys.size

  data.delete_at(0)

  data.each do |record |
    h = {}

    len.times do |i|
      h[keys[i]] = record[i]
    end

    hash[:users] << h
  end
  hash
end

def generate_json_file(hash)
  puts JSON.pretty_generate(hash)
  f = File.open('output.json', 'w')
  f.write(hash.to_json)
  f.close
end

desc 'csv to json'
file 'output.json' => ['data.csv'] do |f|
  data = CSV::read(f.prerequisites[0])
  hash = convert_to_hash(data)
  generate_json_file(hash)
end
