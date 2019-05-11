require_relative 'menu'

class TakeAway

    def initialize 
        @menu = Menu.new
    end

    def select_dishes
        display_menu
    end

    def display_menu
        @menu.menu_list.each{ |k, v| puts "#{k}: #{v}"}
    end
    
end