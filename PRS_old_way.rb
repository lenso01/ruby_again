
CHOICES = {'p' => 'PAPER', 'r' => "Rock", 's' => 'Scissors'}
puts "Welcome to fucking game"
AHMET = "Ahmet"
COMPUTER = 'Computer'

loop do
  #player  computer pick .
  begin
    puts ""
    puts "Pick one: (p,r,s)"
    player_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player_choice)



  if player_choice == 'p'
    puts "#{AHMET} choice is Paper"
  elsif player_choice == 'r'
    puts "#{AHMET} choice is Rock"
  elsif player_choice == 's'
    puts "#{AHMET} choice is Scissor"
  else
    puts "bug in code"

  end



  #computer makes a pick
  computer_choice = CHOICES.keys.sample
  if computer_choice == 'p'
    puts "#{COMPUTER} choice is Paper"
  elsif computer_choice == 'r'
    puts "#{COMPUTER} Choice is Rock"
  elsif computer_choice == 's'
    puts "#{COMPUTER} Choice is Scissor"

  else
    puts "bug in code"

  end

  if player_choice == computer_choice
    puts "It is a tie"
  elsif (player_choice == 'p' && computer_choice == 'r') || (player_choice == 'r' && computer_choice == 's') || (player_choice == 's' || computer_choice == 'p')
    puts "YOU WON!"
  else
    puts "Computer Won"

  end

  # puts "do you want to play again"
  # answer = gets.chomp.downcase
  # if answer == 'y'
    # puts 'Game started again'
  # else
  #   break
  # end



end












=begin
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

=end
