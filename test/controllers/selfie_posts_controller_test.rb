require 'test_helper'

class SelfiePostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @selfie_post = selfie_posts(:one)
  end

  test "should get index" do
    get selfie_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_selfie_post_url
    assert_response :success
  end

  test "should create selfie_post" do
    assert_difference('SelfiePost.count') do
      post selfie_posts_url, params: { selfie_post: { created_at: @selfie_post.created_at, description: @selfie_post.description, picture_url: @selfie_post.picture_url } }
    end

    assert_redirected_to selfie_post_url(SelfiePost.last)
  end

  test "should show selfie_post" do
    get selfie_post_url(@selfie_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_selfie_post_url(@selfie_post)
    assert_response :success
  end

  test "should update selfie_post" do
    patch selfie_post_url(@selfie_post), params: { selfie_post: { created_at: @selfie_post.created_at, description: @selfie_post.description, picture_url: @selfie_post.picture_url } }
    assert_redirected_to selfie_post_url(@selfie_post)
  end

  test "should destroy selfie_post" do
    assert_difference('SelfiePost.count', -1) do
      delete selfie_post_url(@selfie_post)
    end

    assert_redirected_to selfie_posts_url
  end
end
