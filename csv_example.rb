require 'CSV'

CSV.open("new_numbers.csv", "w", :headers => true) do |csv|
  CSV.foreach("numbers.csv", headers: :true, converters: :numeric) do |obj|
    csv << obj.headers.sort
    values = Hash[obj.sort].values
    csv << values
  end
end






