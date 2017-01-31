require 'rails_helper'

RSpec.describe "selfie_posts/edit", type: :view do
  before(:each) do
    @selfie_post = assign(:selfie_post, SelfiePost.create!(
      :description => "MyString",
      :picture_url => "MyString",
      :User => nil
    ))
  end

  it "renders the edit selfie_post form" do
    render

    assert_select "form[action=?][method=?]", selfie_post_path(@selfie_post), "post" do

      assert_select "input#selfie_post_description[name=?]", "selfie_post[description]"

      assert_select "input#selfie_post_picture_url[name=?]", "selfie_post[picture_url]"

      assert_select "input#selfie_post_User_id[name=?]", "selfie_post[User_id]"
    end
  end
end
