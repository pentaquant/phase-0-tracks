#Incomplete

def alias_manager
  vowels = "aeiou"
  consonants = "bcdfghjklmnpqrstvwxyz"
  user_data = {}

loop do
  puts "Enter first and last name. When finished type 'exit'."
  input = gets.chomp
  break if input == "exit"
  lett_arr = input.split(' ').reverse.join(" ").split('')

  v = vowels.length
  i = input.length
  
  newarray = []
  
x = 0
while x < lett_arr.length
  if lett_arr[x] == "u"
    lett_arr[x] == "a"
    x += 1
  elsif lett_arr[x] == "z"
    lett_arr[x] = "b"
    x += 1
  elsif vowels.include? lett_arr[x]
    lett_arr[x] = vowels[(vowels.index[x])+ 1]
    x += 1
  elsif consonants.include? name_arr[i]
    lett_arr[x] = consonants[consonants.index(lett_arr[x]) + 1]
    x += 1
  else 
    x +=1
  end
end
