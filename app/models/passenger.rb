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
     self.rides.select do |ride| 
        sum = 0
       ride.distance.each do |dist| 
        sum += dist 
       end 
       sum 
     end 
     
    end 

    def self.premium_members

    end 

    



end 

