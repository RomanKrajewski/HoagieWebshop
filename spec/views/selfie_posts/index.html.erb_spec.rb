require 'rails_helper'

RSpec.describe "selfie_posts/index", type: :view do
  before(:each) do
    assign(:selfie_posts, [
      SelfiePost.create!(
        :description => "Description",
        :picture_url => "Picture Url",
        :User => nil
      ),
      SelfiePost.create!(
        :description => "Description",
        :picture_url => "Picture Url",
        :User => nil
      )
    ])
  end

  it "renders a list of selfie_posts" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Picture Url".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
