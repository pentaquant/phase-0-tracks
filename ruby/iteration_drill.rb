# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]
# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk

puts zombie_apocalypse_supplies.join(" * ")

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.

def sort(array)
  x = array.length
  loop do
    done = false
    
    (x-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        done = true
      end
    end
    
    break if not done
  end
  array
end
        
sort(zombie_apocalypse_supplies)

puts "array is now sorted: #{sort(zombie_apocalypse_supplies)}"

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?

def find_item(array, string)
  found_it = false
  n = array.length
  
  for i in 0 .. n
    if array[i] == string
      found_it = true
    end
  end
  
  if found_it
    puts "Found it."
  else 
    puts "Didn't find it."
  end
end

find_item(zombie_apocalypse_supplies, 'water jug')
find_item(zombie_apocalypse_supplies, 'crayons')

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.

def remove_it(array, items)
  new_arr = []
  
  if items > array.length
    puts "You don't have that many items."
  elsif items == array.length
    puts "All items removed."
  else 
      for i in 0...items
        new_arr[i] = array[i]
      end
      puts "#{items} items removed.\n here's your new supply pack: #{new_arr}"
  end
end
  
remove_it(zombie_apocalypse_supplies, 9)

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays. 

zombie_supplies = ["tent", "water jug", "batteries", "flash light", "charger", "portable stove", "knife"]
survivor_supplies = ["radio", "cell phone", "knife", "books", "cash", "tent", "water jug"]

new_pack = []
new_pack = zombie_supplies | survivor_supplies

puts "#{new_pack}"

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.

new_array = []
extinct_animals.each do |key, value|
  new_array << key.to_s + " - " + value.to_s
end

puts "#{new_array.join(" * ")}"

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.

new_hash = {}

extinct_animals.each do |key, value|
  if value < 2000
    new_hash[key] = value
  end
end

puts "\n\n#{new_hash}"

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.

extinct_animals.each do |key, value|
  extinct_animals[key] = value -= 3
end

puts "\n\n#{extinct_animals}"

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.

check = ["Andean Cat", "Dodo", "Saiga Antelope", "West African Black Rhinoceros"]
n = check.length

extinct_animals.each do |key, value|
  for i in 0...n
    if key == check[i]
      puts "\nFound #{check[i]}!"
    end
  end
end

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.

pigeon = []

extinct_animals.delete_if do |key, value|
    key == "Passenger Pigeon"
    if key == "Passenger Pigeon"
      pigeon << key << value

    end
end
puts "\n\nNew Array: #{pigeon}"
puts "\n\nHash Updated: #{extinct_animals}"
