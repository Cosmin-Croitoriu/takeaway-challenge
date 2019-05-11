class Menu
  attr_reader :menu_list

   MENU_LIST = {"spring roll"=> 0.99, "char sui bun"=>3.99, "pork dumpling"=>2.99, "peking duck"=>7.99, "fu-king fried rice"=>5.99}
  def initialize
    @menu_list = MENU_LIST
  end

end
