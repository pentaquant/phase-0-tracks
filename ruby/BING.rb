class BingoBoard
  
  def initialize(board)
    @bingo_board = board
  end
  
  def call
    letter_arr = ['B','I','N','G','O']
    @letter = letter_arr[rand(letter_arr.length)]
    @number = rand(100)
    puts @letter.to_s + @number.to_s
  end
  
  def check 
    call
    letter_check = @letter
    case letter_check
    when 'B'
      letter_index = 0
    when 'I'
      letter_index = 1
    when 'N'
      letter_index = 2
    when 'G'
      letter_index = 3
    else 
      letter_index = 4
    end 
    
    cell = @bingo_board[letter_index].find_index(@number)
      if cell == nil
        puts "g again"
      else
        @bingo_board[letter_index][cell] = "X"
        puts @bingo_board.inspect
      end
    end
    
    def basic_show_board
      @bingo_board.each do |element|
        puts element.inspect
      end
    end
    
    def display_pretty_board
      row_array = ['B','I','N','G','O']
      for x in 0...@bingo_board.length do
        print "\n Row #{row_array[x]}:"
        @bingo_board[x].each do |cell|
          cell_s = cell.to_s
          if cell_s.length < 2
            print "  " + cell_s + " "
          else
            print " " + cell_s + " "
          end
        end
      end
    end
  end
  
  def new_board
    Array.new
    board = []
    5.times do 
      arr = []
      5.times do 
        number = rand(100)
        arr << number
      end
    board << arr
  end
  return board
end

def play_10_round(board)
end

# Refactored Solution
# DRIVER TESTS GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]
        
game = BingoBoard.new(new_board)
game.call
game.check
game.basic_show_board
game.display_pretty_board