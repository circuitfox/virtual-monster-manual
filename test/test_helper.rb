ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  def login_as(user, password = "password")
    post sessions_url, params: { name: user.email, password: password }
  end

  def logout
    delete logout_url
  end

  def logged_in?
    !session[:user_id].nil?
  end

  def logged_in_as?(user)
    session[:user_id] == user.id
  end
end

ActiveRecord::FixtureSet.context_class.include BCrypt
