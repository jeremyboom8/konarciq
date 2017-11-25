# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Starting seed..."
  # Event.destroy_all
  # Booking.destroy_all
  Listing.destroy_all
  User.destroy_all
puts "Database dropped"

# USERS

hillary = User.create(first_name: "Hillary", last_name: "Parks", photo_url: "https://images.pexels.com/photos/567452/pexels-photo-567452.jpeg?h=350&auto=compress&cs=tinysrgb", email: "hillary@gmail.com", password: "123456")
nicolas = User.create(first_name: "Nicolas", last_name: "Feer", photo_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/zqnoyn0jjimopwbvjij7.jpg", email: "atmosfeer@gmail.com", password: "RubyOnRails")
frida = User.create(first_name: "Frida", last_name: "Levin", photo_url: "https://scontent.fgse1-1.fna.fbcdn.net/v/t1.0-1/p50x50/10426072_10152599980393347_5299541698241902343_n.jpg?oh=f1db7acd153fe84ab641dbd6ecab34c5&oe=5AD71B26", email: "fridalevin7@gmail.com", password: "123456")
jeremy  = User.create(first_name: "Jeremy", last_name: "Smith", photo_url: "https://www.bodymindlife.com/wp-content/uploads/2017/11/Teacher-Training-Team-Andy-414x414.jpg", email: "jeremy@gmail.com", password: "123456")
john  = User.create(first_name: "Johnny", last_name: "McGabe", photo_url: "http://shivalaya.com.np/wp-content/uploads/2017/06/Yoga-Teacher-profile.jpg", email: "john@gmail.com", password: "123456")
cameron = User.create(first_name: "Cameron", last_name: "McGregor", photo_url: "http://www.goodvibesfitness.co.uk/Content/images/teacherprofile_76.png", email: "cameron@gmail.com", password: "123456")
bill = User.create(first_name: "Bill", last_name: "Johansson", photo_url: "http://blog.whereismymat.com/wp-content/uploads/2015/10/Nico-Luce-profile.jpg", email: "bill@gmail.com", password: "123456")
angela = User.create(first_name: "Angela", last_name: "Parks", photo_url: "https://static1.squarespace.com/static/589c68afd1758eddbde8ba72/t/59a69d1df14aa1f18e32aac7/1504091430361/Adina2.jpg", email: "angela@gmail.com", password: "123456")
joanna = User.create(first_name: "Joanna", last_name: "Neilson", photo_url: "http://res.cloudinary.com/acroyoga-international/image/asset/Jen-290f25e22ffbcf8d78a6ca3c7c65209b.jpg", email: "joanna@gmail.com", password: "123456")

# LISTINGS

# Yoga retreat
url = 'http://cdn.cnn.com/cnnnext/dam/assets/160415122850-womens-sacred-expression-retreat-in-lake-atitlan-guatemala-super-169.jpg'
yoga = Listing.new(title: "Yoga Retreat", caption: "Best yoga retreat (caption)",description: "Amazing yoga retreat", address: "Lund, Sweden")
yoga.user = jeremy
yoga.photo_url = url
yoga.save

# Meditation retreat
url = "https://www.kamalaya.com/fileadmin/user_upload/___Group-Meditation-retreat.jpg"
meditation = Listing.new(title: "Meditation Retreat", caption: "Best meditation retreat (caption)",description: "Amazing meditation retreat", address: "Copenhagen, Denmark")
meditation.user = cameron
meditation.photo_url = url
meditation.save

# Well-being Magic retreat
url = "http://www.finland-product-manual.com/uploads/8/0/7/8/80787950/_3464881_orig.jpg"
wellbeing = Listing.new(title: "Well-being Magic", caption: "Best well being journey (caption)",description: "Amazing well-being journey", address: "Helsingborg, Sweden")
wellbeing.user = bill
wellbeing.photo_url = url
wellbeing.save

# EVENTS

# event_one = Event.new(max_capacity: 4)
# event_one.listing = yoga
# event_one.user = john
# event_one.start_date = Date.today + rand(150)
# event_one.end_date = Date.today + rand(150)
# event_one.save

# event_two = Event.new(max_capacity: 10)
# event_two.listing = wellbeing
# event_two.user = hillary
# event_two.start_date = Date.today + rand(150)
# event_two.end_date = Date.today + rand(150)
# event_two.save

# event_third = Event.new(max_capacity: 8)
# event_third.listing = meditation
# event_third.user = hillary
# event_third.start_date = Date.today + rand(150)
# event_third.end_date = Date.today + rand(150)
# event_third.save

# # BOOKINGS

# booking_one = Booking.new(status: "Pending")
# booking_one.listing = yoga
# booking_one.user = john
# booking_one.customer_message = "Excited for this!"
# booking_one.save

# booking_two = Booking.new(status: "Rejected")
# booking_two.listing = yoga
# booking_two.user = hillary
# booking_two.customer_message = "Woohoo! See you soon!"
# booking_two.save

# booking_third = Booking.new(status: "Approved")
# booking_third.listing = meditation
# booking_third.user = hillary
# booking_third.customer_message = "If you do any food, I'm a vegetarian"
# booking_third.save

puts "Seeded"
