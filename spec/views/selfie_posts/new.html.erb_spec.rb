require 'rails_helper'

RSpec.describe "selfie_posts/new", type: :view do
  before(:each) do
    assign(:selfie_post, SelfiePost.new(
      :description => "MyString",
      :picture_url => "MyString",
      :User => nil
    ))
  end

  it "renders new selfie_post form" do
    render

    assert_select "form[action=?][method=?]", selfie_posts_path, "post" do

      assert_select "input#selfie_post_description[name=?]", "selfie_post[description]"

      assert_select "input#selfie_post_picture_url[name=?]", "selfie_post[picture_url]"

      assert_select "input#selfie_post_User_id[name=?]", "selfie_post[User_id]"
    end
  end
end
