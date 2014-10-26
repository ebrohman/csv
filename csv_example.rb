require 'CSV'

csv_text = File.read("numbers.csv")
csv = CSV.parse(csv_text)
csv.each do |row|
  p row.each {|x| x.sub! /\A0+/, ''}
end


