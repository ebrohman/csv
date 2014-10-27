require 'CSV'

CSV.open("new_numbers.csv", "w", :headers => true) do |csv|
  CSV.foreach("numbers.csv", headers: :true, converters: :numeric) do |obj|
    csv << obj.headers.sort
    csv << Hash[obj.sort].values
  end
end






