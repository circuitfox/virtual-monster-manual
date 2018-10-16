require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user = users(:example)
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.name = ""
    assert @user.invalid?
  end

  test "name should be unique" do
    bad = User.new(name: @user.name, email: "example1@example.com")
    assert bad.invalid?
  end

  test "email should be present" do
    @user.email = ""
    assert @user.invalid?
  end

  test "email should be unique" do
    bad = User.new(name: "example1", email: @user.email)
    assert bad.invalid?
  end

  test "should not be valid without a password" do
    user = User.new(password: nil, password_confirmation: nil)
    assert user.invalid? :create
  end

  test "should not be valid with a short password" do
    user = User.new(password: "foo", password_confirmation: "foo")
    assert user.invalid? :create
  end

  test "should not be valid with a confirmation mismatch" do
    user = User.new(password: "foo", password_confirmation: "bar")
    assert user.invalid? :create
  end

  test "existing user should be valid with a new password" do
    @user.password = @user.password_confirmation = "newpassword"
    assert @user.valid? :update
  end

  test "normal user should not be admin" do
    assert_not @user.admin?
  end

  test "admin user should be admin" do
    assert users(:admin).admin?
  end
end
