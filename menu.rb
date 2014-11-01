#Menu Class

class Menu
attr_reader :quit
  def initialize(*menu_args)

    @menu_args = menu_args
    @quit = @menu_args.length
  end

  def get_menu_choice
    @menu_args.each_with_index do  |item,index |
    puts "#{index + 1 }. #{item}"

    end

    print "enter your choice: "
    user_choice = gets.to_i
    return user_choice

  end
end



menu = Menu.new(
    "Load Character 1",
    "Load Character 2",
    "Fight",
    "Quit"

)


#puts menu.quit
choice = menu.get_menu_choice


while ((choise = menu.get_menu_choice) !=menu.quit)
  case choice
    when 1
      puts "loading 1"
    when 2
      puts "loading 2"
    end
  end
