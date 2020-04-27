class Passenger 

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
    end

    def rides
        Ride.all.select { |ride| ride.passenger == self}

    end 

    def drivers
       self.rides.map {|drv| drv.driver}
    end 

    def self.all
        @@all
    end 

    def total_distance
    #     sum = 0
    #  self.rides.select do |ride| 
    #    sum += ride.distance 
    #    end 
    #    sum 
      dist = self.rides.sum {|ride| ride.distance}
    #   dist.sum 
    
     
    
    end 

    def self.premium_members
    self.all.find_all { |pass| pass.total_distance >= 100}
    end 

    



end 

