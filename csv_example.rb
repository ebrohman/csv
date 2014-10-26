require 'CSV'

csv_text = File.read("numbers.csv")
csv = CSV.parse(csv_text, headers: true)
@rows = []
@headers = []
CSV.foreach("numbers.csv", headers: true, converters: :numeric) do |row|
  @headers << row.to_hash
end
@headers.each do |row|
  p row.sort
end



