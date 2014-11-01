class MrCoffee
  @@max_water_level = 32.0 #oz
  @@max_coffee_level = 8.0 #oz

  attr_reader :power, :water_level, :coffee_level


  def initialize()
    @power = false                #boolean
    @water_level = 0.0
    @clock = 0
    @coffee_level = 0.0
    @brewed_coffee_level = 0.0
    @filter = false
    @brewing_time = 0
    @element_temp = 0.0
    @brewing = false

  end

  def turn_on
    @power = true
  end

  def turn_off
    @power = false
  end

  def add_water (ounces)
    @water_level += ounces
    if (@water_level > @@max_water_level)
      @water_level = @@max_water_level
    end

  end

  def add_coffee (ounces)
    @coffee_level += ounces

    if (@coffee_level > @@max_coffee_level)
      @coffee_level = @@max_coffee_level
    end

  end

  def add_filter
    @filter = true
  end

  def remove_filter
    @filter = false
  end

  def coffee_level_check
    if (coffee_level >= 8.0)
      return "Coffee Level is Fine"
    else
      return "Coffee level is Low #{@coffee_level} Add more Coffee"
    end
  end

  def water_level_check
    if (@water_level >= 32.0)
      return "Water Level is Fine"
    else
      return "Water level is Low #{@water_level} Add more Water"
    end
  end

  def brew
    if (@power && @water_level > 0.0 && @filter && @coffee_level > 0.0)
      @brewing = true
      @water_level -= 8.0  #TODO: peg this variable to zero
      @coffee_level -= 2.0 #TODO: peg this variable to zero
      self.remove_filter
      @brewed_coffee_level +=8.0 #TODO: peg
      @brewing = false
      return "Your coffee is ready"
    else
      return "Can't Brew Right now - Missing Stuff : \nWater Level: #{water_level_check}\n#{coffee_level_check}\nFilter: #{@filter}\nPower: #{@power}"

    end



  end

end



my_coffee = MrCoffee.new()
puts my_coffee.power
my_coffee.add_water(20.0)
puts my_coffee.water_level
my_coffee.add_water(25.0)
puts my_coffee.water_level
my_coffee.add_coffee(25.0)
puts my_coffee.coffee_level

puts my_coffee.brew
