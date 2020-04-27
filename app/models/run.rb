require_relative "./ride.rb"
require_relative "./passenger.rb"
require_relative "./driver.rb"

josh = Passenger.new("Josh")
# jason = Passenger.new("Jason")
mert = Driver.new(3.8)

# something = Ride.new(jason, mert, 3)
somn = Ride.new(josh, mert, 5)
someth = Ride.new(josh, mert, 99)
# puts josh.rides
# puts josh.total_distance
# puts Passenger.premium_members
# puts Driver.all 
puts Driver.mileage_cap(4)
puts Ride.average_distance 


