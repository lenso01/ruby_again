class PRS

 attr_accessor :computer

  @@computer_selection = ["p","r","s"]

  def initialize
    @computer = []
    @option = []

  end

  def welcome
    puts "Welcome to our Paper Scissor Rock Game. Good Luck"
    puts "Papers, Scissor or Rock. Choose one "


  end

  def user_selection

    @option << gets.chomp.downcase

  end

  def computer_turn
    @computer << @@computer_selection.sample.to_s.downcase

  end

  def compare
    if @option == @computer
      puts "It is a tie"
    elsif (@option = "p" && @computer ="r") || (@option = "s" && @computer ="p") || (@option = "r" && @computer ="s")
      puts "You won"
    elsif (@computer = "p" && @option ="r") || (@computer = "s" && @option ="p") || (@computer = "r" && @option ="s")

    end

  end


end


game = PRS.new
puts game.welcome
puts game.user_selection
puts game.computer_turn
game.computer
game.compare


