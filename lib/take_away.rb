require_relative 'menu'
class TakeAway
  attr_reader :order_list
  
  def initialize 
    @menu = Menu.new
    @order_list = []
    @price = 0
  end

  def display_menu
    @menu.menu_list.each { |dish, price| puts "#{dish}: #{price}" }
  end

  def select_dishes(dish, quantity = 1)
    @order_list.push("#{quantity} x #{dish}(s)")
    @price += quantity * @menu.menu_list[dish]
    "#{quantity} x #{dish}(s) added in your basket!"
  end
  
  def basket_summary
    dish_price = 0
    dish_price += @price
    "#{@order_list.join(', ')} = £#{dish_price}"
  end
 
end
