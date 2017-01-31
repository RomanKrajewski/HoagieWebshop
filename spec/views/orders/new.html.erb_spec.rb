require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
      :extras => "MyString",
      :price => "9.99",
      :User => nil
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input#order_extras[name=?]", "order[extras]"

      assert_select "input#order_price[name=?]", "order[price]"

      assert_select "input#order_User_id[name=?]", "order[User_id]"
    end
  end
end
