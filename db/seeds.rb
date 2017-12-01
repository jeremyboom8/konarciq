puts "Deleting database"
  Booking.destroy_all
  Event.destroy_all
  Listing.destroy_all
  User.destroy_all
puts "Database deleted"

=begin

#Files loaded

0100 users
0200 listings
0300 events
0400 bookings

=end

Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }

puts "Seeded"
