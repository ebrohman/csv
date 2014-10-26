require 'CSV'

csv_text = File.read("numbers.csv")
csv = CSV.parse(csv_text)
@rows = []
csv.each do |row|
   @rows << row.each {|x| x.sub! /\A0+/, ''}
end

p @rows

