require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:example)
    login_as(@user)
  end
  test "should get index" do
    get search_index_url
    assert_response :success
  end

  test "should get search" do
    get search_url
    assert_response :success
  end

end
