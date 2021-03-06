ENV['RAILS_ENV'] ||= 'test'

if ENV['CI']
  require 'simplecov'
  SimpleCov.start 'rails'
end

require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  def login_as(user_name, password)
    post login_url, params: { user: { name: user_name, password: password } }
  end
end
