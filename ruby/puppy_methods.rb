
class Puppy

  def initialize
    puts "Initializing new puppy instance"
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(x)
    x.times do puts "woof"
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(y)
    dog_y = y * 7
    puts "Dog years = #{dog_y} years."
  end
end
  

### Driver Code ------#
Puppy.new.fetch("ball")
Puppy.new.speak(7)
Puppy.new.roll_over
Puppy.new.dog_years(5

### Release 2 My Own Class ---------#

class Baseball_player

  def pitch
    y = rand(0..1)
      if y == 0
        puts "Ball"
      else
        puts "Strike"
      end
    end

#1B % = 65% // 2B % = 20% // 3B % = 5% // HR % = 10%

  def hit 
    y = rand(0..100)
      if y <= 65
        puts "1B"
      elsif y > 66 && y < 85
        puts "2B"
      elsif y > 86 && y < 95
        puts "3B"
      else
        puts "HR"
      end
  end
end


### DRIVER CODE ------------#
i = 0
bball_data = []
until i == 5
  bball_data[i] = Baseball_player.new
  i += 1
end 


bball_data.each do | player |
  player.hit
  player.pitch
  puts " ----_----_----_----_----_"
end

####NOTE: This was my original submission for 6.2

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