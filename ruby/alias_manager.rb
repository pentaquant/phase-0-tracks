#Swap the first and last name
  #Seperate both of the items and store them within an array
  #downcase all letters
  #Vowels: change vowels to the next value in aeiou
  #Change consonants to next consonant in the alphabet

# Food for thought
#   When will it be helpful to convert the string to an array to work with it more easily?
#   How will you figure out whether a letter is a vowell
#   How will you deal with the fact that some letters are uppercase
#   How will you handle edge cases


def alias_manager(name_in)
  vowels = "aeiou"
  consonants = "bcdfghjklmnpqrstvwxyz"
  name_data = {}
  
  r_name = name_in.downcase.split(' ').reverse.join(' ').chars

  n = r_name.length
  #check this might be problematic, maybe ...
  i = 0
  while i < n
      if r_name[i] == "u"
        r_name[i] = "a"
      elsif r_name[i] == "z"
        r_name[i] = "b"
      elsif vowels.include? r_name[i]
        r_name[i] = vowels[vowels.index(r_name[i])+1]
        i += 1
      elsif consonants.include? r_name[i]
        r_name[i] = consonants[consonants.index(r_name[i])+1]
        i += 1
      else 
        i += 1
      end
  end

  upcase_variable = r_name.map { |x| "#{x}" }.join("").split(' ')
  
  converted_name = upcase_variable.map { |x| x.capitalize }.join(" ")
  
  name_data[name_in.to_sym] = converted_name
  
  name_data.each do |name_in, converted_name|
    puts "\nName Entered: #{name_in} // Name Returned: #{converted_name}."
  end
end

alias_manager("Peter Mueller")
alias_manager("John Doe")
