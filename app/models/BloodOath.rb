require "Date"

class BloodOath
    @@all = []
    attr_accessor :initiation_date, :cult, :followers

    def initialize(cult)
        @initiation_date = Date.today
        @cult = cult
        @followers = []
        @@all << self
    end

    def take_oath(follower)
        @cult.recruit_follower(follower)
        @followers << follower
    end

    def self.all
        @@all
    end

end