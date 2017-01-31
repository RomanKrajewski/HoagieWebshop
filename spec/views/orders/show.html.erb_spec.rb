require 'rails_helper'

RSpec.describe "orders/show", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :extras => "Extras",
      :price => "9.99",
      :User => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Extras/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
  end
end
