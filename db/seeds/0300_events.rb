require 'faker'

=begin

TODO:

3. Events

=end

puts "Creating events"

@event_one = Event.new(max_capacity: 4)
@event_one.listing = @snowkiting
#
event_date = Date.today + rand(100)
@event_one.start_date = event_date
@event_one.end_date = event_date + (rand(3) + 1)
#
@event_one.price = 1000
@event_one.save


@event_two = Event.new(max_capacity: 10)
@event_two.listing = @snowkiting
#
event_date = Date.today + rand(90)
@event_two.start_date = event_date
@event_two.end_date = event_date + (rand(3) + 1)
#
@event_two.price = 2000
@event_two.save


@event_three = Event.new(max_capacity: 8)
@event_three.listing = @snowkiting
#
event_date = Date.today + rand(70)
@event_three.start_date = event_date
@event_three.end_date = event_date + (rand(3) + 1)
#
@event_three.price = 2000
@event_three.save


@event_four = Event.new(max_capacity: 4)
@event_four.listing = @snowkiting
#
event_date = Date.today + rand(60)
@event_four.start_date = event_date
@event_four.end_date = event_date + (rand(3) + 1)
#
@event_four.price = 1000
@event_four.save


@event_five = Event.new(max_capacity: 10)
@event_five.listing = @snowkiting
#
event_date = Date.today + rand(40)
@event_five.start_date = event_date
@event_five.end_date = event_date + (rand(3) + 1)
#
@event_five.price = 2000
@event_five.save


@event_six = Event.new(max_capacity: 8)
@event_six.listing = @snowkiting
#
event_date = Date.today + rand(30)
@event_six.start_date = event_date
@event_six.end_date = event_date + (rand(3) + 1)
#
@event_six.price = 2000
@event_six.save
