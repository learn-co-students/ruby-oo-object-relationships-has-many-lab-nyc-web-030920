class Song
    attr_accessor :name, :artist, :genre

    @@all= []
    def initialize(name,genre)
        @name = name
        @genre = genre
        @@all << self
    end
    def add_song(song)
        @songs << song
    end
    def songs
        @songs
    end

end