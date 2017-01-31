require 'rails_helper'

RSpec.describe "selfie_posts/show", type: :view do
  before(:each) do
    @selfie_post = assign(:selfie_post, SelfiePost.create!(
      :description => "Description",
      :picture_url => "Picture Url",
      :User => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Picture Url/)
    expect(rendered).to match(//)
  end
end
