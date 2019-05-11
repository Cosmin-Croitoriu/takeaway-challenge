require 'menu'
describe Menu do
  describe '#display' do
    it 'displays the menu' do

    expect{subject.display}.to output("spring roll: 0.99\nchar sui bun: 3.99\npork dumpling: 2.99\npeking duck: 7.99\nfu-king fried rice: 5.99\n").to_stdout
    end 
  end   

end





# As a customer
# So that I can check if I want to order something
# I would like to see a list of dishes with prices


