require_relative 'menu'
class TakeAway
  attr_reader :order_list
  
  def initialize 
    @menu = Menu.new
    @order_list = []
  end

  def display_menu
    @menu.menu_list.each { |k, v| puts "#{k}: #{v}" }
  end

  def select_dishes(dish, quantity = 1)
    @order_list.push("#{quantity} x #{dish}(s)")
    "#{quantity} x #{dish}(s) added in your basket!"
  end
end
