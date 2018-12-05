vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(vehicles)
  uniq_vehicles = vehicles.uniq

  uniq_vehicles.each do |vehicle|
    count = vehicles.count(vehicle)
    puts "#{vehicle} => #{count}"
  end
end


count_occurrences(vehicles)




# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2




