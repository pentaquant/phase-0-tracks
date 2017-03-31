puts "How old are you?"
  user_age = gets.chomp
puts "What year were you born?" 
  birthday = gets.chomp.to_i
require 'Date'

age = Date.today.year - birthday
    age -= 1 if Date.today < birthday + age.years #for days before birthday

if user_age == age
  puts "true"
else 
  puts "Info does not line up"
end

