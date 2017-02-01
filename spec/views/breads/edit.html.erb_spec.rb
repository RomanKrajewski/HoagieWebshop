require 'rails_helper'

RSpec.describe "breads/edit", type: :view do
  before(:each) do
    @bread = assign(:bread, Bread.create!(
      :name => "MyString",
      :price => "9.99"
    ))
  end

  it "renders the edit bread form" do
    render

    assert_select "form[action=?][method=?]", bread_path(@bread), "post" do

      assert_select "input#bread_name[name=?]", "bread[name]"

      assert_select "input#bread_price[name=?]", "bread[price]"
    end
  end
end
