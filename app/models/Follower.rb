
class Follower
    attr_accessor :name, :age, :motto, :cults

    @@all = []

    def initialize(name, age, motto)
        @name = name
        @age = age
        @motto = motto
    end

    def join_cult(cult)
        cult.recruit_follower(self)
    end


end

