
class Song
    attr_accessor :name
    @@all = []

    def initialize(name, artist = nil)
        @name = name
        self.artist = artist
        # @artist = artist
        save
    end

    def self.all
        @@all
    end

    def self.destroy_all
        Song.all.clear
    end

    def save
        Song.all << self
    end

    def self.create(name)
        Song.new(name)
        return Song.all.find {|song| song.name == name}
    end

    def artist=(artist)
        @artist = artist
    end

    def artist
        @artist
    end

end