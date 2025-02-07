test "index" do
  get "/listings.json"
  assert_response 200

  data = JSON.parse(response.body)
  assert_equal Listing.count, data.length
end
