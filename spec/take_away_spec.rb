require 'take_away'

describe TakeAway do
  MENUSTRING = "NO SPRING ROLL: 1.0\nchar sui bun: 3.99\npork dumpling: 2.99\npeking duck: 7.99\nfu-king fried rice: 5.99\n"
  MENU_LIST = { "NO SPRING ROLL" => 1.0, "char sui bun" => 3.99, "pork dumpling" => 2.99, "peking duck" => 7.99, "fu-king fried rice" => 5.99 }

  describe '#display_menu' do
    it "displays a list of dishes" do
      fake_menu = instance_double('Menu', menu_list: MENU_LIST)
      allow(Menu).to receive(:new).and_return(fake_menu)
      expect { subject.display_menu }.to output(MENUSTRING).to_stdout
    end
  end

  describe '#select_dishes' do

    it "adds the selected dishes into an array" do
      fake_menu = instance_double('Menu', menu_list: MENU_LIST)
      allow(Menu).to receive(:new).and_return(fake_menu)
      subject.select_dishes('NO SPRING ROLL', 2)
      subject.select_dishes('peking duck')
      expect(subject.order_list).to eq(["2 x NO SPRING ROLL(s)", "1 x peking duck(s)"])
    end
  
    it "returns the dishes selected " do
      fake_menu = instance_double('Menu', menu_list: MENU_LIST)
      allow(Menu).to receive(:new).and_return(fake_menu)
      expect(subject.select_dishes('NO SPRING ROLL', 2)).to eq("2 x NO SPRING ROLL(s) added in your basket!")
    end

  end

  describe '#basket_summary' do
    it "displays the basket summary and the price" do
      fake_menu = instance_double('Menu', menu_list: MENU_LIST)
      allow(Menu).to receive(:new).and_return(fake_menu)
      subject.select_dishes('NO SPRING ROLL', 2)
      subject.select_dishes('peking duck')
      expect(subject.basket_summary).to eq("2 x NO SPRING ROLL(s), 1 x peking duck(s) = £9.99")
    end
  end
    
end
