require 'test_helper'

class SmartWashControllerTest < ActionController::TestCase
  test "should get DashBoard" do
    get :DashBoard
    assert_response :success
  end

end
