class Item
  attr_accessor :id, :description, :price
  def initialize (description, price)
    @id = rand(100...200)
    @description = description
    @price = price

  end


  # def description
  #   return @description
  # end
  #
  # def description=(description)
  #   @description = description
  # end
  #
  # def price
  #   return @price
  # end
  #
  # def price=(price)
  #   @price = price
  # end

  def title_area
    return "Item ID \tItem Desc.\tItem Price"

  end


  def to_s

    return "#{@id}  \t\t#{self.description} \t\t$#{self.price} "
  end


end

shirt = Item.new("shirt", 22.99)
pants = Item.new("pants", 40.50)
puts shirt.title_area



#
# puts shirt
#
# shirt.price = 10
# shirt.description = "Pants"

puts shirt
puts pants

