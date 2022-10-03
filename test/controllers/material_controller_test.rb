require "test_helper"

class MaterialControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get material_index_url
    assert_response :success
  end
end
