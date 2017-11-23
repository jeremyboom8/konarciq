# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Starting seed..."
  Booking.destroy_all
  Listing.destroy_all
  User.destroy_all
puts "Database dropped"


######### users ########################################################

hillary = User.create(first_name: "Hillary", last_name: "Smith", photo_url: "https://www.biography.com/.image/t_share/MTE4MDAzNDEwMDU4NTc3NDIy/hillary-clinton-9251306-2-402.jpg", email: "hillary@gmail.com", password: "123456")
jeremy  = User.create(first_name: "Jeremy", last_name: "Boom", photo_url: "https://pbs.twimg.com/profile_images/767015623184482304/5qhj67dd_400x400.jpg", email: "jeremy@gmail.com", password: "123456")
john  = User.create(first_name: "Johnny", last_name: "Smith", photo_url: "http://r.fod4.com/c=sq/s=w200,pd1/o=80/http://p.fod4.com/p/channels/pzwrl/profile/s=w1200/o=95/m9oNs9QJQIi9QbUoNTvH_john-oliver-hbo.jpg", email: "john@gmail.com", password: "123456")
cameron = User.create(first_name: "Cameron", last_name: "Smith", photo_url: "https://www.famousbirthdays.com/headshots/cameron-boyce-3.jpg", email: "cameron@gmail.com", password: "123456")
bill = User.create(first_name: "Bill", last_name: "Smith", photo_url: "https://pbs.twimg.com/profile_images/451207149478096896/HoMUOmyu.jpeg", email: "bill@gmail.com", password: "123456")
angela = User.create(first_name: "Angela", last_name: "Smith", photo_url: "https://specials-images.forbesimg.com/imageserve/573c8bed4bbe6f6361853a34/416x416.jpg?background=000000&cropX1=0&cropX2=744&cropY1=151&cropY2=895", email: "angela@gmail.com", password: "123456")
joanna = User.create(first_name: "Joanna", last_name: "Smith", photo_url: "http://media.thisisinsider.com/images/58e2ae9885086820008b48c3-750-810.jpg", email: "joanna@gmail.com", password: "123456")

# Listings ############################################################

# Yoga retreat
url = 'http://cdn.cnn.com/cnnnext/dam/assets/160415122850-womens-sacred-expression-retreat-in-lake-atitlan-guatemala-super-169.jpg'
yoga = Listing.new(title: "Yoga Retreat", caption: "Best yoga retreat (caption)",description: "Amazing yoga retreat", price: 5200, address: "Ahornsgade 15, Copenhagen")
yoga.user = jeremy
yoga.photo_url = url
yoga.save

# Meditation retreat
url = "https://www.kamalaya.com/fileadmin/user_upload/___Group-Meditation-retreat.jpg"
meditation = Listing.new(title: "Meditation Retreat", caption: "Best meditation retreat (caption)",description: "Amazing meditation retreat", price: 4300, address: "Ahornsgade 15, Copenhagen")
meditation.user = cameron
meditation.photo_url = url
meditation.save

# Well-being Magic retreat
url = "http://www.finland-product-manual.com/uploads/8/0/7/8/80787950/_3464881_orig.jpg"
meditation = Listing.new(title: "Well-being Magic", caption: "Best well being journey (caption)",description: "Amazing well-being journey", price: 4000, address: "Ahornsgade 15, Copenhagen")
meditation.user = bill
meditation.photo_url = url
meditation.save

########## bookings #########################################
booking_one = Booking.new(status: "Pending")
booking_one.listing = yoga
booking_one.user = john
booking_one.start_date = Date.today + rand(150)
booking_one.end_date = Date.today + rand(150)
booking_one.save

booking_two = Booking.new(status: "Rejected")
booking_two.listing = yoga
booking_two.user = hillary
booking_one.start_date = Date.today + rand(150)
booking_one.end_date = Date.today + rand(150)
booking_two.save

booking_fourth = Booking.new(status: "Approved")
booking_fourth.listing = meditation
booking_fourth.user = hillary
booking_one.start_date = Date.today + rand(150)
booking_one.end_date = Date.today + rand(150)
booking_fourth.save

puts "Seeded"
