require 'test_helper'

class LoginPageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get login_page_index_url
    assert_response :success
  end

end
