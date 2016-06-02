require 'csv'
require 'pp'

people = []

CSV.foreach('people.csv', headers: true) do |row|
  person_as_hash = row.to_hash
  people << person_as_hash
end

# pp people[0]

people.each do |person|
  puts person["email"]
end
