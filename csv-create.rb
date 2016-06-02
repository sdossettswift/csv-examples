require 'csv'

jwo = {
  :first_name => "Jesse",
  :last_name => "Wolgamott",
  :age => 37,
  :birthplace => "Phoenix, AZ"
}
# {:first_name=>"Jesse", :last_name=>"Wolgamott", :age=>37, :birthplace=>"Phoenix, AZ"}%

bob = {}
bob[:first_name] = "Bob"
bob[:last_name] = "McDoo"
bob[:age] = 67
bob[:birthplace] = "Seattle, WA"

people = [jwo, bob]

puts people.inspect

CSV.open("people-created.csv", "wb") do |csv|
  csv << ["first_name", "last_name", "age", "birthplace"]
  people.each do |person|
    csv << [person[:first_name], person[:last_name], person[:age], person[:birthplace]]
  end
end
