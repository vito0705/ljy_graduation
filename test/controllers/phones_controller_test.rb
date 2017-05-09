require 'test_helper'

class PhonesControllerTest < ActionDispatch::IntegrationTest
  test "should get register" do
    get phones_register_url
    assert_response :success
  end

  test "should get auth" do
    get phones_auth_url
    assert_response :success
  end

end
