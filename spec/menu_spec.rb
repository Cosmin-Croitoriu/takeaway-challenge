require 'menu'
describe Menu do
  it ' initalizes with a list of dishes' do
    expect(subject.menu_list).to eq({"spring roll"=> 0.99, "char sui bun"=>3.99, "pork dumpling"=>2.99, "peking duck"=>7.99, "fu-king fried rice"=>5.99})
  end
end





