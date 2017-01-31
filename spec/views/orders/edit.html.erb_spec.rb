require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :extras => "MyString",
      :price => "9.99",
      :User => nil
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input#order_extras[name=?]", "order[extras]"

      assert_select "input#order_price[name=?]", "order[price]"

      assert_select "input#order_User_id[name=?]", "order[User_id]"
    end
  end
end
