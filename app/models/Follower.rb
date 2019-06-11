
class Follower
    attr_accessor :name, :age, :life_motto, :cults

    @@all = []

    def initialize(name, age, motto)
        @name = name
        @age = age
        @life_motto = motto
        @cults = []
        @@all << self
    end

    def join_cult(cult)
        oath = BloodOath.new(cult)
        oath.take_oath(self)
        # cult.recruit_follower(self)
        #puts "I, #{name}, am joining #{cult.name}, `#{cult.slogan}`!"
        @cults << cult
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
        @@all.select do |follower|
            follower.age == age
        end
    end

end

