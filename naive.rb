require "./yo"
puts oh_hai

file = File.open("people.csv")
string = file.read
file.close


rows = string.split("\r\n")

emails = []
row_count = 0

rows.each do |row|
  columns = row.split(",")

  # puts columns.inspect
  row_count +=1

  if row_count > 1
    emails << columns[2]
  end
end

puts emails.inspect
