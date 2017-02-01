require 'rails_helper'

RSpec.describe "breads/new", type: :view do
  before(:each) do
    assign(:bread, Bread.new(
      :name => "MyString",
      :price => "9.99"
    ))
  end

  it "renders new bread form" do
    render

    assert_select "form[action=?][method=?]", breads_path, "post" do

      assert_select "input#bread_name[name=?]", "bread[name]"

      assert_select "input#bread_price[name=?]", "bread[price]"
    end
  end
end
