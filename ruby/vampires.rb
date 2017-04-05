  
puts "How many employees will be processed?"
  count = gets.chomp.to_i

  while count > 0
    puts "What is your name?"
      emp_name = gets.chomp
    puts "How will you be as of year end 2017?"
      age = gets.chomp.to_i
    puts "What year were you born?" 
      year = gets.chomp.to_i
    puts "We serve garlic bread. Should we order some for you?"
      gbread = gets.chomp
    puts "Would you like to enroll in the company's health insurance?"
      hinsure = gets.chomp


    if emp_name == "Drake Cula" || emp_name == "Tu Fang"
        conclusion = "Definitely a Vampire"
    elsif  age == 2017-year && (gbread == "yes" || hinsure == "yes")
       conclusion = "Probably not a vampire"
    elsif age != 2017-year && (gbread == "no" || hinsure == "no")
      conclusion = "Probably a vampire"
    elsif age != 2017-year && (gbread == "no" && hinsure == "no")
      conclusion = "Almost certainly a vampire."
    else
      conclusion = "Results inconclusive."
    end 

    puts "Please list any allergies you have, and when done please enter 'done'"
    allergies = gets.chomp
      while true
        if allergies == "sunshine"
          conclusion = "Probably a vampire."
          break
        elsif allergies == "done"
          break
        end
      end

  puts conclusion
  count -= 1
  end

  puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

