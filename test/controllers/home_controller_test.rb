require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get interface" do
    get home_interface_url
    assert_response :success
  end
end
