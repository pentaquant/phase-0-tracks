puts "What is the hamster's name?"
name = gets.chomp
puts "The hamster's name is #{name}"

puts "How loud is the hamster, from 1 to 10?"
volume = gets.chomp.to_i
puts "The creature's volume is #{volume}"

puts "What is its fur color?"
furcolor = gets.chomp
puts "The hamster has #{furcolor} fur"

puts "Is this hamster a good or bad candidate?"
candidate = gets.chomp
if candidate == "good"
  puts "We'd be happy to have you for adoption!"
elsif candidate == "bad" 
  puts "We're sorry, maybe you should look into other shelters"
end


puts "How old is the hamster?"
age = gets.chomp.to_i
if age == 0
  puts nil
else
  puts "The hamster is #{age} years old"
end 

