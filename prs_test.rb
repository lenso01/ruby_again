class Player
  attr_reader :name
  attr_accessor :choice

  def initialize(n)
    @name =n
  end

  def to_s
     "#{name} currently has a choice of #{choice}!"
  end

end

class Human < Player
  def pick_hand
    begin
      puts "Pick one : (p,r,s):"
      c = gets.chomp.downcase

    end until Game::CHOICES.keys.include?(c)
    self.choice = c
  end

end

class Computer < Player
   def pick_hand
     self.choice = Game::CHOICES.keys.sample
   end

end



class Game

  CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'}
  attr_reader :player, :computer

  def initialize
    @player = Human.new("Bob")
    @computer = Computer.new("R2D2")


  end

  def play
     player.pick_hand
     computer.pick_hand
    #compare_hands

  end


end

Game.new.play
