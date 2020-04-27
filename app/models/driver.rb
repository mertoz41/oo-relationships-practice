class Driver 

    attr_accessor :distance 
    @@all = []

    def initialize(distance)
        @distance = distance
        @@all << self 
    end 

    def name 
      rid = Ride.all.find { |ride| ride.driver == self}
    rid.passenger.name 
    end 

    def rides
        Ride.all.select { |ride| ride.driver == self}
    
    end 

    def passengers
        self.rides.map {|drv| drv.passenger}
    end 

    def self.all
        @@all
    end 

    def self.mileage_cap(distance)
        self.all.select { |driver| driver.distance > distance}
    end 




end 