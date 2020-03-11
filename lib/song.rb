class Song
    @@all = []
    attr_accessor :artist, :name, :genre
    def initialize (name)
        @name = name
        @genre = genre
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        artist.name if artist
    end

end
