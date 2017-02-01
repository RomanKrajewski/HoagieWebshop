require 'rails_helper'

RSpec.describe "breads/show", type: :view do
  before(:each) do
    @bread = assign(:bread, Bread.create!(
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
