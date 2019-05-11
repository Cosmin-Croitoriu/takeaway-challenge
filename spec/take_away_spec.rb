require 'take_away'
require 'menu'

describe TakeAway do
  MENUSTRING = "NO SPRING ROLLS: 0.00, char sui bun: 3.99\npork dumpling: 2.99\npeking duck: 7.99\nfu-king fried rice: 5.99\n"
  MENU_LIST = { "NO SPRING ROLLS" => 0.00, "char sui bun" => 3.99, "pork dumpling" => 2.99, "peking duck" => 7.99, "fu-king fried rice" => 5.99 }

  describe '#display_menu' do
    it "displays a list of dishes" do
      fake_menu = instance_double('Menu', menu_list: MENU_LIST)
      allow(Menu).to receive(:new).and_return(fake_menu)
      expect { subject.display_menu }.to output(MENUSTRING).to_stdout
    end
  end
end
