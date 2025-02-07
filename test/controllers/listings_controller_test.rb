require "test_helper"

class ListingsControllerTest < ActionDispatch::IntegrationTest
  test "destroy action should remove a listing" do
    listing = Listing.first
    assert_difference "Listing.count", -1 do
      delete "/listings/#{listing.id}.json"
      assert_response 200
    end
  end
end
