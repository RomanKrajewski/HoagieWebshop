require 'rails_helper'

RSpec.describe "sauces/edit", type: :view do
  before(:each) do
    @sauce = assign(:sauce, Sauce.create!(
      :name => "MyString",
      :price => "9.99"
    ))
  end

  it "renders the edit sauce form" do
    render

    assert_select "form[action=?][method=?]", sauce_path(@sauce), "post" do

      assert_select "input#sauce_name[name=?]", "sauce[name]"

      assert_select "input#sauce_price[name=?]", "sauce[price]"
    end
  end
end
