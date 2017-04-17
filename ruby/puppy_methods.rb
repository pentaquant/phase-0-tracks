class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(times)
    times.times do 
      puts "Woof"
    end
  end
  
  def roll_over
    puts "rolls over"
  end
  
  def dog_year(human_years)
    dog_years = human_years*7
    puts "#{dog_years}"
  end 
  
  def get_beer(brand)
    puts "I got you some #{brand}"
  end 
  
  def initialize
    puts "Initilizing new puppy instance..."
  end
end

class Swimmer
  
  def initialize
    puts "initializing..."
  end 
  
  def hold_breath(seconds)
    puts "I can hold my breath for #{seconds} seconds"
  end
  
  def sprint_time(seconds)
    puts "I did the 1400 meters in #{seconds}"
  end
end

# ---- DRIVER CODE
athletes = []
count = 0 
until count == 50
  p "Starting the count..."
  athletes[count] = Swimmer.new 
  count += 1
end

number = 0
athletes.each do |athlete|
  puts "-------"
  p "athlete[#{number}]:"
  athlete.hold_breath(10)
  athlete.sprint_time(20)
  number += 1
end
return 0

# newpuppy = Puppy.new 
# newpuppy.fetch("ball")
# newpuppy.speak(3)
# newpuppy.dog_year(8)
# newpuppy.get_beer("Heineken")