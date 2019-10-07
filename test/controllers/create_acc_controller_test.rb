require 'test_helper'

class CreateAccControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get create_acc_index_url
    assert_response :success
  end

end
