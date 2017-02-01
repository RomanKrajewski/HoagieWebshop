require 'rails_helper'

RSpec.describe "breads/index", type: :view do
  before(:each) do
    assign(:breads, [
      Bread.create!(
        :name => "Name",
        :price => "9.99"
      ),
      Bread.create!(
        :name => "Name",
        :price => "9.99"
      )
    ])
  end

  it "renders a list of breads" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
