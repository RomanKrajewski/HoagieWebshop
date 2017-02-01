require 'rails_helper'

RSpec.describe "sauces/new", type: :view do
  before(:each) do
    assign(:sauce, Sauce.new(
      :name => "MyString",
      :price => "9.99"
    ))
  end

  it "renders new sauce form" do
    render

    assert_select "form[action=?][method=?]", sauces_path, "post" do

      assert_select "input#sauce_name[name=?]", "sauce[name]"

      assert_select "input#sauce_price[name=?]", "sauce[price]"
    end
  end
end
