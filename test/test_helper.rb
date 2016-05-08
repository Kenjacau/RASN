ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get patron" do
    get :patron
    assert_response :success
  end

  test "should get elite" do
    get :elite
    assert_response :success
  end
end
