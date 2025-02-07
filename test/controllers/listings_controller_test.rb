require "test_helper"

class ListingsControllerTest < ActionDispatch::IntegrationTest
  test "update action should modify a listing" do
    listing = Listing.first
    patch "/listings/#{listing.id}.json", params: { title: "Updated Title" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated Title", data["title"]
  end
end
