# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. 

puts zombie_apocalypse_supplies.join(" * ")


# 2.

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


# 3. 

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

# 4. 

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


# 5. 

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

# 1. 

new_array = []
extinct_animals.each do |key, value|
  new_array << key.to_s + " - " + value.to_s
end

puts "#{new_array.join(" * ")}"


# 2. 

new_hash = {}

extinct_animals.each do |key, value|
  if value < 2000
    new_hash[key] = value
  end
end

puts "\n\n#{new_hash}"


# 3. 


extinct_animals.each do |key, value|
  extinct_animals[key] = value -= 3
end

puts "\n\n#{extinct_animals}"



# 4. 

check = ["Andean Cat", "Dodo", "Saiga Antelope", "West African Black Rhinoceros"]
n = check.length

extinct_animals.each do |key, value|
  for i in 0...n
    if key == check[i]
      puts "\nFound #{check[i]}!"
    end
  end
end


# 5.

pigeon = []

extinct_animals.delete_if do |key, value|
    key == "Passenger Pigeon"
    if key == "Passenger Pigeon"
      pigeon << key << value

    end
end
puts "\n\nNew Array: #{pigeon}"
puts "\n\nHash Updated: #{extinct_animals}"
