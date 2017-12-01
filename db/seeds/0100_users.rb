=begin

TODO:
1. Users
  - First name
  - Last name
  - Bio
  - Email
  - Password
  - Photo
=end

puts "Creating users"

# Admin (not implemented)

@frida = User.create(
  first_name: "Frida",
  last_name: "Levin",
  photo_urls: ["https://jeremyboom8.github.io/konarciq_files/user-f-frida.jpg"],
  email: "fridalevin7@gmail.com",
  password: "123456"
)

@jeremy  = User.create(
  first_name: "Jeremy",
  last_name: "Boom",
  photo_urls: ["https://jeremyboom8.github.io/konarciq_files/user-m-jeremy.jpg"],
  email: "jeremy.boom77@gmail.com",
  password: "123456"
)

@nicolas = User.create(
  first_name: "Nicolas",
  last_name: "Feer",
  photo_urls: ["https://jeremyboom8.github.io/konarciq_files/user-m-nicolas.jpg"],
  email: "atmosfeer@gmail.com",
  password: "rubyonrails"
)

# Normal

@camilla = User.create(
  first_name: "Camilla",
  last_name: "Parks",
  photo_urls: ["https://jeremyboom8.github.io/konarciq_files/user-f-camilla.jpg"],
  email: "camilla@gmail.com",
  password: "123456",
  bio: "We've lived in this area for many years and have two 'grown up' children, some extra space and would like to be able to share our great area with visitors. We also love travelling and have had some yoga experiences in the UK and abroad"
)

@louise = User.create(
  first_name: "Louise",
  last_name: "Parks",
  photo_urls: ["https://jeremyboom8.github.io/konarciq_files/user-f-louise.jpg"],
  email: "louise@gmail.com",
  password: "123456",
  bio: "I lived in London for 20 years of which 10 were in Chiswick W4. We moved to North Yorkshire in 2015 and have never looked back."
)
@mette = User.create(
  first_name: "Mette",
  last_name: "Neilson",
  photo_urls: ["https://jeremyboom8.github.io/konarciq_files/user-f-mette.jpg"],
  email: "mette@gmail.com",
  password: "123456",
  bio: "We've lived here for 5 years and love life in Malton. We enjoy the cinema and restaurants and appreciate not having to drive for a night out. We reserve the flat some weeks for our children and grandchildren and enjoy taking them to Flamingo Land, Castle Howard and the coast. We also love walking around Malton and on the North Yorkshire Moors and I love 'wild swimming' both at the coast and a nearby lake."
)
@mary = User.create(
  first_name: "Mary",
  last_name: "Olsen",
  photo_urls: ["https://jeremyboom8.github.io/konarciq_files/user-f-mary.jpg"],
  email: "mary@gmail.com",
  password: "123456",
  bio: "My place is close to York and Malton with easy access to the City and the countryside, restaurants and dining from superb Indian cuisine to wholesome home cooked food. . My place is good for couples, solo adventurers, and business travellers. You should also enquire about the luxurious Shepherds Hut new for 2018."
)

@james = User.create(
  first_name: "James",
  last_name: "Smith",
  photo_urls: ["https://jeremyboom8.github.io/konarciq_files/user-m-james.jpg"],
  email: "james@gmail.com",
  password: "123456",
  bio: "Beautiful cottage refurbished to a really high standard. Really well thought out with a ground floor bedroom and an upstairs bedroom and with a living room that opens out onto a brilliant garden/patio/bbq area. Great features (loved the dici-screen electric fire that had real crackling fire sounds too - made u"
)

@john = User.create(
  first_name: "John",
  last_name: "McGabe",
  photo_urls: ["https://jeremyboom8.github.io/konarciq_files/user-m-john.jpg"],
  email: "john@gmail.com",
  password: "123456",
  bio: "You will love the peace, quiet and our tranquil rural setting. Lots of wildlife and birds, beautiful views. Perfect for people visiting Malton (food capital of North Yorkshire), shopping in York and the races. Good for couples and solo adventurers."
)

@cameron = User.create(
  first_name: "Cameron",
  last_name: "McGregor",
  photo_urls: ["https://jeremyboom8.github.io/konarciq_files/user-m-cameron.jpg"],
  email: "cameron@gmail.com",
  password: "123456",
  bio: "Hi I'm Cameron, I own a Home Interiors Store in Malton with my husband, the cottage is owned by my family for us all to use and for guests from Yoga.com."
)

@bill = User.create(
  first_name: "Bill",
  last_name: "Johansson",
  photo_urls: ["https://jeremyboom8.github.io/konarciq_files/user-m-bill.jpg"],
  email: "bill@gmail.com",
  password: "123456",
  bio: "Joined in April 2017"
)

@ewan = User.create(
  first_name: "Ewan",
  last_name: "McMaster",
  photo_urls: ["https://jeremyboom8.github.io/konarciq_files/user-m-ewan.jpg"],
  email: "ewan@gmail.com",
  password: "123456",
  bio: "I am a retired registered nurse and teacher, myself and husband a retired tutor enjoy sailing and travel as well as taking joint responsibility for running our successful holiday cottage."
)

puts "Created users"
