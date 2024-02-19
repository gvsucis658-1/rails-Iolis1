require "test_helper"

class ArmoryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get armory_index_url
    assert_response :success
  end
end
