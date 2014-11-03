class Players

  attr_reader :name
  attr_accessor :choice


  def initialize(n)
    @name = n
  end

  def to_s
    "#{name} choice is #{choice}"
  end

end

class Human < Players

  def pick_hand
    begin
      puts "Pick P,R,S"
      c = gets.chomp.downcase

    end until Game::CHOICES.keys.include?(c)
        self.choice = c

  end

end

class Computer < Players

  def pick_hand

  self.choice = Game::CHOICES.keys.sample

  end


end



class Game

  CHOICES = {'p' => "Paper", 'r' => "Rock", 's' => 'Scissors'}

  attr_reader :player, :computer

  def initialize
    @player = Human.new('Ahmet')
    @computer = Computer.new('Robotx')
  end

  def start
    player.pick_hand
    computer.pick_hand
    puts player
    puts computer
    result
    compare_hands
    start
  end

  def compare_hands
    if player.choice == computer.choice
      puts "It is a tie"
    elsif (player.choice == 'p' && computer.choice == 'r') || (player.choice == 's' && computer.choice == 'p') || (player.choice == 'r' && computer.choice == 's')
      puts "Player wins "
    else
      puts "Computer Wins"

    end
  end

  def result
    case
      when player.choice == 'p' && computer.choice == 'r'
        puts "Paper Wraps Rock"
      when player.choice == 'r' && computer.choice == 's'
        puts "Rock beats Scissor"
      when player.choice == 's' && computer.choice == 'p'
        puts "Scissor cuts Paper"
      when computer.choice == 'p' && player.choice == 'r'
        puts "Paper Wraps Rock"
      when computer.choice == 'r' && player.choice == 's'
        puts "Rock beats Scissor"
      when computer.choice == 's' && player.choice == 'p'
        puts "Scissor cuts Paper"
    end
  end

end


Game.new.start






















# class Players
#   attr_reader :name
#   attr_accessor :choice
#
#   def initialize(n)
#     @name = n
#   end
#
#   def to_s
#     "This is #{name} has choice of #{choice}!"
#   end
#
#   def pick_hand
#     begin
#       puts "Pick one: (p,r,s)"
#       c = gets.chomp.downcase
#     end until Game::CHOICES.keys.include?(c)
#     self.choice = c
#
#   end
#
#   def computer_pick_hand
#     self.choice = Game::CHOICES.keys.sample
#   end
#
# end
#
# class Game
#   attr_accessor :choice, :player, :computer
#
#   CHOICES = {'p' => 'PAPER', 'r' => 'Rock', 's' => 'Scissors'}
#
#   def initialize
#     @player = Players.new('Ahmet')
#     @computer = Players.new('RX200')
#   end
#
#
#   def start
#     player.pick_hand
#     computer.computer_pick_hand
#     puts player
#     puts computer
#
#
#   end
#
# end
#
# Game.new.start


# class Game
#   CHOICES = {'p' => 'PAPER', 'r' => 'Rock', 's' => 'Scissors'}
#   attr_accessor :player
#   def initialize
#     @player = ('Ahmet')
#   end
#
#   def to_s
#     "this is my #{player}"
#   end
#
#   def pick_hand
#     begin
#       puts ""
#       puts "Pick one: (p,r,s)"
#       choice = gets.chomp.downcase
#     end until CHOICES.keys.include?(choice)
#
#   end
#
#   def show_choices
#     choice
#   end
#
#
# end
#
# class Engine
#   attr_accessor :player, :computer, :choice
#
#   def initialize
#     @player = Game.new
#     @computer = Game.new
#
#
#   end
#
#   def begin
#     player.pick_hand
#     puts choice
#     computer.pick_hand
#   end
#
# end
#
# engine = Engine.new
# engine.begin
