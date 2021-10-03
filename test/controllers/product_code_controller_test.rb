require "test_helper"

class ProductCodeControllerTest < ActionDispatch::IntegrationTest
  test "should get verify" do
    get product_code_verify_url
    assert_response :success
  end
end
