# print a prompt that notifies the interior designer to enter the details of the client
puts "Welcome to iDesign, the interior designer information tracking software."

puts "What is the client's name?"
name = gets.chomp

puts "What is the client's age?"
age = gets.chomp.to_i

puts "How many children does the client have?"
children = gets.chomp.to_i

puts "What is the desired decoration theme?"
decor_theme = gets.chomp

client_info = {
  name: name,
  age: age,
  children: children,
  decor_theme: decor_theme,
}

puts client_info

puts "Are there any edits to the information that you would like to make?"
  edits = gets.chomp
if 


# suitcase_items = []

# puts "welcome to the suitcase assistance"

# loop do
#   puts "Enter item"
#   input = gets.chomp
#   suitcase_items << input
# end









#Grab information from the user and place the information into hashes
