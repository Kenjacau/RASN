require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
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
