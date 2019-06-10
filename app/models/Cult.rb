

class Cult
    attr_accessor :cult_population, :name, :location, :founding_year, :slogan, :followers
    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @followers = []
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        @@all.find{|cult| cult.name == name}
    end

    def self.find_by_location(location)
        @@all.find do |cult|
            cult.location == location
        end
    end

    def self.find_by_founding_year(year)
        @@all.find{ |cult| cult.founding_year == year}
    end

    def cult_population
        @followers.length
    end
    
    def recruit_follower(follower_instance)
        @followers << follower_instance
    end
end