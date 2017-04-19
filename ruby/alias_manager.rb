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

  r_name = name_in.downcase.split(' ').reverse.join(' ')

end
  
alias_manager("Peter Mueller")
#DRIVER CODE________________
