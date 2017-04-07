# print a prompt that notifies the interior designer to enter the details of the client
puts "Welcome to iDesign, the interior designer information tracking software."

puts "What is the client's name?"
name = gets.chomp

puts "What is the client's age?"
age = gets.chomp.to_i

puts "How many children does the client have?"
children = gets.chomp.to_i

puts "What is the desired decoration theme?"
decor = gets.chomp

#Define the hash and where the collected information will reside.

client_info = {
  name: name,
  age: age,
  children: children,
  decor: decor,
}
#Display current hash to see if there are any discrepancies
puts "Name:#{client_info[:name]} Age:#{client_info[:age]} Number of Children:#{client_info[:children]} Decor Theme:#{client_info[:decor_theme]}"

#Ask if there are any changes the user would like to make and what value he would like to enter
puts "Are there any keys that you would like to edit? If no edits are necessary please enter 'none' "
  answer = gets.chomp
  if answer == "none"
    puts "Here is your information [Name:#{client_info[:name]} Age:#{client_info[:age]} Number of Children:#{client_info[:children]} Decor Theme:#{client_info[:decor]}]" 
  else
    answer = answer.to_sym
    puts "What value would you like to use?"
    client_info[answer] = gets.chomp
    puts "Here is your updated information [Name:#{client_info[:name]} Age:#{client_info[:age]} Number of Children:#{client_info[:children]} Decor Theme:#{client_info[:decor]}]" 
  end










#Grab information from the user and place the information into hashes
