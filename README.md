

In this file I will list the procedures I have used in order to complete this challenge.

-I have started doing the tests for the following User Story
<!-- 
 As a customer
 So that I can check if I want to order something
 I would like to see a list of dishes with prices
 -->

 - I have created a class 'Menu' that it's only function , for now, is to display the menu.
 And this is the feature test in IRB
 
 <!-- 
 Makerss-MacBook-Pro-2:takeaway-challenge student$ irb -r './lib/menu.rb' 
2.5.0 :001 > menu = Menu.new
 => #<Menu:0x00007f9fbd042748> 
2.5.0 :002 > menu.display
spring roll: 0.99
char sui bun: 3.99
pork dumpling: 2.99
peking duck: 7.99
fu-king fried rice: 5.99
 => {"spring roll"=>0.99, "char sui bun"=>3.99, "pork dumpling"=>2.99, "peking duck"=>7.99, "fu-king fried rice"=>5.99} 
2.5.0 :003 >  
-->

 - The next step would be to create the 'TakeAway' class that lets the user to select dishes from the menu, for now.

<!-- 
As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes 
-->

 - I have decided to put the 'display_menu' function into the 'TakeAway' class and to let 'Menu' class to contain only the hash with the dishes
 I have also redone the tests for the 'Menu' and 'TakeAway' classes using mocks( for 'TakeAway') so that I could test without any interference with the class 'Menu' even if I used class injection in my 'TakeAway' class from 'Menu'

 This is the feature test for it in IRB

 <!-- 
 Makerss-MacBook-Pro-2:takeaway-challenge student$ irb -r './lib/take_away.rb' 
2.5.0 :001 > shop = TakeAway.new
 => #<TakeAway:0x00007fe43d007700 @menu=#<Menu:0x00007fe43d0076d8 @menu_list={"spring roll"=>0.99, "char sui bun"=>3.99, "pork dumpling"=>2.99, "peking duck"=>7.99, "fu-king fried rice"=>5.99}>> 
2.5.0 :002 > shop.display_menu
spring roll: 0.99
char sui bun: 3.99
pork dumpling: 2.99
peking duck: 7.99
fu-king fried rice: 5.99
 => {"spring roll"=>0.99, "char sui bun"=>3.99, "pork dumpling"=>2.99, "peking duck"=>7.99, "fu-king fried rice"=>5.99} 
2.5.0 :003 > 
 -->

- My next step is to test and create the function of 'select'

<!-- 
As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes 
-->
  It feels like this method will be a massive one so I will attempt to split it's requirements into more methods

- 'select_dishes' method it stores the dishes into an array and returns a message. The quantity parameter is by default set to 1

<!-- 
Makerss-MacBook-Pro-2:takeaway-challenge student$ irb -r './lib/take_away.rb' 
2.5.0 :001 > t = TakeAway.new
 => #<TakeAway:0x00007fa42f907510 @menu=#<Menu:0x00007fa42f9074e8 @menu_list={"spring roll"=>0.99, "char sui bun"=>3.99, "pork dumpling"=>2.99, "peking duck"=>7.99, "fu-king fried rice"=>5.99}>, @order_list=[]> 
2.5.0 :002 > t.display_menu
spring roll: 0.99
char sui bun: 3.99
pork dumpling: 2.99
peking duck: 7.99
fu-king fried rice: 5.99
 => {"spring roll"=>0.99, "char sui bun"=>3.99, "pork dumpling"=>2.99, "peking duck"=>7.99, "fu-king fried rice"=>5.99} 
2.5.0 :003 > t.select_dishes('peking duck')
 => "1 x peking duck(s) added in your basket!" 
2.5.0 :004 > t.select_dishes('char sui bun', 10)
 => "10 x char sui bun(s) added in your basket!" 
2.5.0 :005 > t.select_dishes('pork dumpling', 5)
 => "5 x pork dumpling(s) added in your basket!" 
2.5.0 :006 > 
 -->
- I have implemented the basked summary that displays the orders selected and the price so far 

<!-- 
Makerss-MacBook-Pro-2:takeaway-challenge student$ irb -r './lib/take_away.rb' 
2.5.0 :001 > t = TakeAway.new
 => #<TakeAway:0x00007fb58b82b110 @menu=#<Menu:0x00007fb58b82aff8 @menu_list={"spring roll"=>0.99, "char sui bun"=>3.99, "pork dumpling"=>2.99, "peking duck"=>7.99, "fu-king fried rice"=>5.99}>, @order_list=[], @price=0> 
2.5.0 :002 > t.select_dishes('char sui bun', 10)
 => "10 x char sui bun(s) added in your basket!" 
2.5.0 :003 > t.select_dishes('peking duck')
 => "1 x peking duck(s) added in your basket!" 
2.5.0 :004 > t.basket_summary
 => "10 x char sui bun(s), 1 x peking duck(s) = £47.89000000000001" 
2.5.0 :005 > t.select_dishes('peking duck')
 => "1 x peking duck(s) added in your basket!" 
2.5.0 :006 > t.select_dishes('char sui bun', 10)
 => "10 x char sui bun(s) added in your basket!" 
2.5.0 :007 > t.basket_summary
 => "10 x char sui bun(s), 1 x peking duck(s), 1 x peking duck(s), 10 x char sui bun(s) = £95.78000000000002" 
2.5.0 :008 >  
-->












