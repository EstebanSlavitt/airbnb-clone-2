User.destroy_all
Listing.destroy_all
Reservation.destroy_all

# Created Fake Users 
user1 = User.create(name: "Alice Johnson", email: "alice@example.com")
user2 = User.create(name: "Bob Smith", email: "bob@example.com")

# Created Fake Listings
listing1 = Listing.create(title: "Cozy Cabin", description: "A warm, comfortable cabin in the woods.", price_per_night: 100.0, location: "Lake Tahoe")
listing2 = Listing.create(title: "City Apartment", description: "Modern apartment in downtown.", price_per_night: 150.0, location: "New York City")

# Created Fake Reservations
Reservation.create(user_id: user1.id, listing_id: listing1.id, start_date: "2025-02-10", end_date: "2025-02-15")
Reservation.create(user_id: user2.id, listing_id: listing2.id, start_date: "2025-03-01", end_date: "2025-03-05")

puts "✅ Seed data added successfully!"
