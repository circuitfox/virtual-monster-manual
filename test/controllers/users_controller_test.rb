require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:example)
    login_as @user
    @admin = users(:admin)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference("User.count") do
      post users_url, params: { user: {
        name: "user",
        email: "user@example.com",
        password: "password",
        password_confirmation: "password"
      }}
    end
    assert_redirected_to root_url
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit if same user" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should not get edit if different user" do
    get edit_user_url(@admin)
    assert_redirected_to root_url
  end

  test "should not get edit if logged out" do
    logout
    get edit_user_url(@user)
    assert_redirected_to root_url
  end

  test "should update if same user" do
    patch user_url(@user), params: { user: {name: "user1" }}
    @user.reload
    assert_equal("user1", @user.name)
    assert_redirected_to user_url(@user)
  end

  test "should not update if different user" do
    assert_no_changes("@admin.name == 'admin'") do
      patch user_url(@admin), params: { user: { name: "admin1" }}
    end
    assert_redirected_to root_url
  end

  test "should not update if logged out" do
    logout
    assert_no_changes("@user.name == 'user'") do
      patch user_url(@user), params: { user: {name: "user1" }}
    end
    assert_redirected_to root_url
  end

  test "should destroy if same user" do
    assert_difference("User.count", -1) do
      delete user_url(@user)
    end
    assert_redirected_to root_url
  end

  test "should not destroy if different user" do
    assert_no_difference("User.count") do
      delete user_url(@admin)
    end
    assert_redirected_to root_url
  end

  test "should not destroy if logged out" do
    logout
    assert_no_difference("User.count") do
      delete user_url(@user)
    end
    assert_redirected_to root_url
  end
end
