# Write a method that counts the number of occurrences of each element in a given array.


# input: array
# output: string

# iterate through the array, and count all the matching strings within it.

# call the uniq method on the array to find the individual names of the elements. Assign this array to a new local varaible, uniq_vehicles

# iterate through uniq_vehicles, and within that loop, for every time an element matches the uniq_v's element, add it to a counter


vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(vehicles)
  uniq_vehicles = vehicles.uniq

  uniq_vehicles.each do |uniq_vehicle|
    counter = 0
    vehicles.each do |vehicle|
      counter += 1 if vehicle == uniq_vehicle
    end
    puts "#{uniq_vehicle} => #{counter}" 
  end
end

count_occurrences(vehicles)




# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2