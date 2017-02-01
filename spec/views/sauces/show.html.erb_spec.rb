require 'rails_helper'

RSpec.describe "sauces/show", type: :view do
  before(:each) do
    @sauce = assign(:sauce, Sauce.create!(
      :name => "Name",
      :price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/9.99/)
  end
end
