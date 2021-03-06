require_relative 'menu'
require_relative 'text_message'
class TakeAway
  attr_reader :order_list
  
  def initialize 
    @menu = Menu.new
    @order_list = []
    @price = 0
    @message = TextMessage.new
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
    "#{@order_list.join(', ')} = £#{@price}"
  end
  
  def display_total_price
    "Total: £#{@price}"
  end

  def checkout(sum)
    fail "The sum is not correct" unless sum == @price
    complete_order
  end

  def complete_order
    @message.send
  end
end
