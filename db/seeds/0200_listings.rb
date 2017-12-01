=begin

TODO:

2. Fun list of NATURE things to do in the nordics
  Norway
  - Hiking norway
  - Snowkiting norway
  - Hike along fjord

  Sweden
  - Northern lights
  - Are snowboard lesson
  - Kitesurfing Skåne
  - Meditation Malmö
  - Climbing Nimis
  - Yoga Lund
  - Wild Sweden

  Denmark
  - http://www.visitdenmark.com/most-beautiful-places-denmark

=end

puts "Creating listings"

@yoga = Listing.new(title: "Yoga Lund", caption: "Stretch-tastic Retreat", description: "Hos oss tränar du med erfarna lärare i mindre grupper där du får personlig feedback. All undervisning sker i våra vackra och stämningsfyllda lokaler på Paradisgatan 1 i centrala Lund.", address: "oneHOTspot Hot Yoga Studio")
@yoga.user = @john
@yoga.youtube_id = "umA_M5y-G1U"
urls = ["https://jeremyboom8.github.io/konarciq_files/l-yoga.jpg"]
@yoga.photo_urls = urls
@yoga.save

@meditation = Listing.new(title: "Meditation Malmö", caption: "Traditionella meditationer", description: "Traditionella meditationer är till sin natur passiva och kräver att vi sitter stilla i tystnad för att uppnå ett meditativt tillstånd som kan hjälpa oss i vårt aktiva liv. Det kan vara svårt för den moderna människan som upplever nära nog ständig yttre stimulans och har höga stressnivåer.", address: "Malmo")
@meditation.user = @john
@meditation.youtube_id = "sJH6_ZbgeWQ"
urls = ["https://jeremyboom8.github.io/konarciq_files/l-meditationn.jpg"]
@meditation.photo_urls = urls
@meditation.save


@wellbeing = Listing.new(title: "Well-being Magic", caption: "Best well being journey (caption)",description: "Amazing well-being journey", address: "Helsinki, Finland")
@wellbeing.user = @john
@wellbeing.youtube_id = "o8bxrnliSts"
urls = ["https://jeremyboom8.github.io/konarciq_files/l-wellbeing.jpg"]
@wellbeing.photo_urls = urls
@wellbeing.save


# DENMARK

@mile = Listing.new(title: "Råbjerg Mile", caption: "Amazing Sand dunes", description: "This impressive scenery of the migrating dune is an obvious destination for an excursion. The dune was formed on the west coast in the 16th century during the great sand drift which dominated the landscape until this century. The tracks left by the dune can be seen back to Raabjerg Stene (The stones of Raabjerg). The dune moves eastward towards the forest at a rate of 15 metres a year.", address: "Råbjerg Mile 9990 Skagen")
@mile.user = @john
@wellbeing.youtube_id = "12lxljraT-0"
urls = ["https://jeremyboom8.github.io/konarciq_files/l-mile.jpg"]
@wellbeing.photo_urls = urls
@wellbeing.save


@knude = Listing.new(title: "Rubjerg Knude", caption: "Beautiful Knude", description: "Close by Lønstrup you will find the massiv and impressive Rubjerg Knude. It is located 90 meters above sea level and it is still growing in size. It is a very beautiful nature scenery where the ocean and sand is a very dramatic evidence too the fact that land is being eaten by the sea and several meters disappears every year.", address: "Fyrvejen 30 9480 Løkken")
@knude.user = @john
@knude.youtube_id = "IKGdKG1otL4"
urls = ["https://jeremyboom8.github.io/konarciq_files/l-knude.jpg"]
@knude.photo_urls = urls
@knude.save


@cliffs = Listing.new(title: "Møns Klint UNESCO biosphere area", caption: "Beautifull Cliffs", description: "When the leaves emerge and adorn Moens Klint in its most splendid mantle - a living illustration of the most famous of Denmark's national songs, 'There is a lovely land..'- is not the only time Moen is really worth visiting. The Broad beech woods near 'the salty strands to the east' and the magnificence of the cliffs are worth visiting all the year round.", address: "Østmøn 4791 Borre")
@cliffs.user = @john
@cliffs.youtube_id = "l3Q1NL1SUa4"
urls = ["https://jeremyboom8.github.io/konarciq_files/l-cliffs.jpg"]
@cliffs.photo_urls = urls
@cliffs.save


@djursland = Listing.new(title: "Nationalpark Mols bjerge Djursland", caption: "Rare Danish Wildlife", description: "The landscape in the Mols Bjerge national park was created by gigantic ice tongues and tons of water over millions of years. In the national park, you will find about 40 of the 200 nature types worthy of preserving, called habitat areas. You can practically feel the cultural history at Kalø castle ruins", address: "Grenaavej 12 8410 Rønde")
@djursland.user = @john
@djursland.youtube_id = "lbnCFbMTgsM"
urls = ["https://jeremyboom8.github.io/konarciq_files/l-djursland.jpg"]
@djursland.photo_urls = urls
@djursland.save


@forest = Listing.new(title: "Rold Skov (Forest)", caption: "Untouched Forests.", description: "The forest Rold Skov is not only Denmark´s largest forest, it is also an enchanted, seven-league forest with remarkable natural phenomena and places of interest from the famous Troldeskov (Troll Forest) with its gnarled troll trees to the most copious freshwater springs in the northern Europe.", address: "Rold Skov 9520 Skørping")
@forest.user = @john
@forest.youtube_id = "lFiqxuoTOMg"
urls = ["https://jeremyboom8.github.io/konarciq_files/l-forest.jpg"]
@forest.photo_urls = urls
@forest.save


@jammer = Listing.new(title: "The Bay Denmark - Jammerbugten", caption: "Stunning Views", description: "Jammerbugten - The Bay Denmark - in North Jutland is a great place to spend a holiday. Along the coast, in the dunes and right by the North Sea you will find excellent accommodations", address: "Jammerbugten, Denmark")
@jammer.user = @john
@jammer.youtube_id = "KyoG10npZk"
urls = ["https://jeremyboom8.github.io/konarciq_files/l-jammer.jpg"]
@jammer.photo_urls = urls
@jammer.save


# TO DO SWEDEN

@northern = Listing.new(title: "The Northern Lights", caption: "A once in a lifetime experience", description: "The bright dancing lights of the aurora are actually collisions between electrically charged particles from the sun that enter the earth's atmosphere. The lights are seen above the magnetic poles of the northern and southern hemispheres. They are known as 'Aurora borealis' in the north and 'Aurora australis' in the south", address: "Lapland")
@northern.user = @john
@northern.youtube_id = "KyoG10npZk"
urls = ["https://jeremyboom8.github.io/konarciq_files/l-northern.jpg"]
@northern.photo_urls = urls
@northern.save


@snowboard = Listing.new(title: "Learn to Snowboard", caption: "Great Fun", description: "Learning to Ski and Snowboard is more than just learning a new, exhilarating winter sport; it is an entrance into a welcoming community of like-minded outdoor enthusiasts that play hard and have fun doing so. Seven Springs makes it easy and fun to learn to ski and snowboard and our experienced instructors are waiting to meet you", address: "Åre, Sweden")
@snowboard.user = @john
@snowboard.youtube_id = "KyoG10npZk"
urls = ["https://jeremyboom8.github.io/konarciq_files/l-snowboard.jpg"]
@snowboard.photo_urls = urls
@snowboard.save


@kitesurfing = Listing.new(title: "Kitesurfing Skåne", caption: "Best Fun EVER", description: "That’s what’s in store for you at WindChasers Guest House and Kitesurfing School, where the waters and winds of Langebaan await you just outside our front door. Whether you’re a certified kitesurfing junkie or a first-time newbie, we guarantee you’ll have the time of your life with us", address: "Lomma, Sweden")
@kitesurfing.user = @john
@kitesurfing.youtube_id = "KyoG10npZk"
urls = ["https://jeremyboom8.github.io/konarciq_files/l-kitesurfing.jpg"]
@kitesurfing.photo_urls = urls
@kitesurfing.save



@nimis = Listing.new(title: "Climbing Nimis", caption: "Interesting art project", description: "On July 30. 1980, Lars Vilks began building a series of sculptures made of driftwood in the nature reserve Kullaberg, in the northwest corner of county Skåne. A few days later the sculpture was name", address: "Nimis, Mölle, Sweden")
@nimis.user = @john
@nimis.youtube_id = "KyoG10npZk"
urls = ["https://jeremyboom8.github.io/konarciq_files/l-nimis.jpg"]
@nimis.photo_urls = urls
@nimis.save


# @wild = Listing.new(title: "Wild Sweden", caption: "Moose, Wolves, Beavers and Brown Bears", description: "We create outstanding wildlife holidays and tours, away from the typical tourist areas. With more than 15 years experience and guests from more than 75 nationalities, we are the number #1 wildlife tour operator in Sweden.", address: "WildSweden Tallvägen 6, S-79015 Sundborn  Sweden")
# @jammer.user = @john
# @jammer.youtube_id = "KyoG10npZk"
# urls = ["https://jeremyboom8.github.io/konarciq_files/l-jammer.jpg"]
# @jammer.photo_urls = urls
# @jammerm.save

puts "Created listings"
