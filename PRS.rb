class Hand

  include Comparable
end




class Player
  attr_accessor :choice
  attr_reader :name
  def initialize(n)
    @name = n
  end

  def to_s
    "#{name} currently has a choice of #{choice}"
  end
end

class Human < Player
  def pick_hand
    begin
      puts ""
      puts "Pick one: (p,r,s)"
      c = gets.chomp.downcase
    end until Game::CHOICES.keys.include?(c)

    self.hand = Hand.new(c)
  end

end

class Computer < Player
    def pick_hand
      self.choice = Game::CHOICES.keys.sample
    end
end

#Hand


class Game
  CHOICES = {'p' => 'PAPER', 'r' => "Rock", 's' => 'Scissors'}

  attr_reader :player, :computer

  def initialize
    @player = Human.new('Bob')
    @computer = Computer.new('r2d2')
  end



  def play

    computer.pick_hand
    player.pick_hand
    puts player
    puts computer
    compare_hands
  end



end



game = Game.new.play





























# class PRS
#
#  attr_accessor :computer
#
#   @@computer_selection = ["p","r","s"]
#
#   def initialize
#     @computer = []
#     @option = []
#
#   end
#
#   def welcome
#     puts "Welcome to our Paper Scissor Rock Game. Good Luck"
#     puts "Papers, Scissor or Rock. Choose one "
#
#
#   end
#
#   def user_selection
#
#     @option << gets.chomp.downcase
#
#   end
#
#   def computer_turn
#     @computer << @@computer_selection.sample.to_s.downcase
#
#   end
#
#   def compare
#     if @option == @computer
#       puts "It is a tie"
#     elsif (@option = "p" && @computer ="r") || (@option = "s" && @computer ="p") || (@option = "r" && @computer ="s")
#       puts "You won"
#     elsif (@computer = "p" && @option ="r") || (@computer = "s" && @option ="p") || (@computer = "r" && @option ="s")
#
#     end
#
#   end
#
#
# end
#
#
# game = PRS.new
# puts game.welcome
# puts game.user_selection
# puts game.computer_turn
# game.computer
# game.compare


