require_relative "./ride.rb"
require_relative "./passenger.rb"
require_relative "./driver.rb"

josh = Passenger.new("Josh")
mert = Driver.new(3.8)

something = Ride.new(josh, mert, 3)
somn = Ride.new(josh, mert, 5)
# puts josh.rides
puts josh.total_distance


