#take a spys real full name
puts "What is your name?"
  og_name = gets.chomp.to_s

#Swap the first and last name
swap_name = og_name.split(' ').reverse

#for eachx in swap_name .split
split_name = []
vowels = "aeiou"


swap_name.each do |letter| 
split_name << letter.chars
end

split_name.each do |letter|
  if |letter| == "a" || "e" || "i" || "o" || "u"
    

p split_name
  
#   split_name << letter.split('')
# p split_name

# split_name. each do |x|
# end
 