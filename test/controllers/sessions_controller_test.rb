require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get login_url
    assert_response :success
  end

  test "should create session" do
    user = users(:example)
    post sessions_url, params: { name: user.email, password: "password" }
    assert_redirected_to root_url
    assert logged_in_as? user
  end

  test "should login with username or email" do
    user = users(:example)
    post sessions_url, params: { name: user.name, password: "password" }
    assert logged_in_as? user
    logout
    post sessions_url, params: { name: user.email, password: "password" }
    assert logged_in_as? user
  end

  test "should flash if login fails" do
    post sessions_url, params: { name: "", password: "" }
    assert_not flash.empty?
  end

  test "should destroy session" do
    login_as users(:example)
    delete logout_url
    assert_not logged_in?
  end
end
