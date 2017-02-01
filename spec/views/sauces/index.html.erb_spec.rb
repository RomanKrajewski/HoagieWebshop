require 'rails_helper'

RSpec.describe "sauces/index", type: :view do
  before(:each) do
    assign(:sauces, [
      Sauce.create!(
        :name => "Name",
        :price => "9.99"
      ),
      Sauce.create!(
        :name => "Name",
        :price => "9.99"
      )
    ])
  end

  it "renders a list of sauces" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
