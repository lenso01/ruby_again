
class Calculator

  def sum_it

    @first_number + @second_number

  end

  def calculation_type
    puts "What do you want to do ? "
    puts "To Sum = 1, to subtraction = 2"
    option = gets.chomp()
      if option == "1"
        ask_numbers
        puts sum_it
      elsif option == "2"
        ask_numbers
        puts subtraction
      end
  end

  def ask_numbers
    puts "Enter your first number"
    @first_number = gets.chomp.to_i
    puts "now second number"
    @second_number = gets.chomp.to_i

  end

  def try_again
    calculation_type
  end



end

calculation = Calculator.new

calculation.calculation_type
calculation.try_again


