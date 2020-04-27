class Ride
    attr_reader :passenger, :driver, :distance

    @@all = []


    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance
        @@all << self
    end 

    def self.all
        @@all 
    end 

    def passengers
        self.passenger 
    end 

    def drivers
        self.driver
    end

    def distances
        self.distance 
    end 

    def self.average_distance
      len = @@all.length 
     rid = @@all.sum {|ride| ride.distance }
     rid / len 
    end 

end 


