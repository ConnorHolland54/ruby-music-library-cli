
class Artist
    attr_accessor :name, :songs
    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        save
    end

    def self.all
        @@all
    end

    def self.destroy_all
        Artist.all.clear
    end

    def save
        Artist.all << self
    end

    def self.create(name)
        Artist.new(name)
    end

    def songs
        @songs
    end

    def add_song(song)
        if song.artist == nil
            song.artist = self
            if !self.songs.include?(song)
                self.songs << song
            end
        end
    end

end
