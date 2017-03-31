puts "What is your name?"
  name = gets.chomp
puts "How will you be as of year end 2017?"
  age = gets.chomp.to_i
puts "What year were you born?" 
  year = gets.chomp.to_i
puts "We serve garlic bread. Should we order some for you?"
  gbread = gets.chomp
puts "Would you like to enroll in the company's health insurance?"
  hinsure = gets.chomp

#wolves_like_sunshine = true
#wolves_like_garlic = true
#vampires_like_sunshine = false
#vampires_like_garlic = false

#This piece of code is not my own but wanted to play around with it to add some complexity to the assignmemnt
#def age()
  #now = Time.now.utc.to_date
  #now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day)) ? 0 : 1)

if age == 2017-year && (gbread == "yes" || hinsure == "yes")
  puts "Probably not a vampire"
elsif age != 2017-year && (gbread == "no" || hinsure == "no")
  puts "Probably a vampire"
elsif age != 2017-year && (gbread == "no" && hinsure == "no")
  puts "Almost certainly a vampire."
elsif name == "dob"


