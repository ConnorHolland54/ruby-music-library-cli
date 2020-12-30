
class Genre
    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def self.destroy_all
        Genre.all.clear
    end

    def save
        Genre.all << self
    end

    def self.create(name)
        Genre.new(name)
    end
end