# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + ":("
#   end
# end

module Shout
  def yelling(words_to_yell)
    puts "#{words_to_yell}"
  end
end

class Teacher
  include Shout
end

class Auctioneer
  include Shout
end

teacher = Teacher.new
teacher.yelling("Put the paste down now")

auctioneer = Auctioneer.new
auctioneer.yelling("Sold to the lady in the red dress")
