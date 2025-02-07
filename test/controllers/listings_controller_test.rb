require "test_helper"

class ListingsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/listings.json"
    assert_response :success

    data = JSON.parse(response.body)
    assert_equal Listing.count, data.length
  end
end