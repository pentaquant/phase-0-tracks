#Created class and defined initialize method and create attribute accessors for class references
class Game
  attr_reader :word, :str
  attr_accessor :guess_max
#Initialize method takes a word as an argument, creates a hash, and updates 
  def initialize(word)
    @word = word
    @game_hash = Hash.new
    @str = String.new
    @guess_max = word.length
  end

#Takes user input and stores the string in a hash. Placing "_" to account for the words yet to be revealed
  def get_word
    @word.each_char do |i|
      @str << '_'
    end
    @game_hash[@word] = @str
    @game_hash
  end

#Checking the guess of the users input with previously entered answers
  def check_guess(char, arr)
    arr.each do |i|
      if char == i
        @guess_max += 1
        puts "You have already chosen '#{char}' as a guess! Try again."
        break
      end
    end
    @guess_max
  end
#Updating the value in the hash
  def update_val(char)
    index = 0
    while index < @word.length  do
      if @word[index] == char
        @str[index] = char
      end
      index += 1
    end
    @game_hash[@word] = @str
    @game_hash
  end
#Printing hash
  def print_update
    @game_hash.each_value do |value|
      puts "#{value}"
    end
  end
end

#Driver Code::;;,,..______________
puts "Please, enter a word:"
guess_word = gets.chomp
guess_word = guess_word.downcase

game = Game.new(guess_word)
game.get_word
guess_array = Array.new

loop do
  if game.guess_max == 0
    puts "Game Over! You Lose!"
    break
  elsif game.str == game.word
    puts "You Win! The answer is '#{game.word}'!"
    break
  else
    puts "Please, enter your guess:"
    guess_letter = gets.chomp
    game.check_guess(guess_letter, guess_array)
    guess_array.push(guess_letter)
  
    game.update_val(guess_letter)
    game.print_update

    game.guess_max -= 1
    puts "You have #{game.guess_max} guesses left"
    puts #additional spacing
  end
end
