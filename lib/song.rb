
class Song 

    attr_accessor :name, :artist

    @@all = []

    def initialize(new_name, new_artist = nil)
        @name = new_name
        @artist = new_artist
        Song.all << self
    end

    def self.all 
        @@all 
    end

    def artist_name
        @artist.name if @artist
    end
    
end
