class Artist
    attr_accessor :name
    attr_reader :songs
    def initialize(name)
        @name = name
        @songs = []
    end
    def songs
        Song.all.select {|song| song.artist = self}
    end

    def add_song(song)
        song.artist = self
    end
    def add_song_by_name(name)
        s = Song.new(name).artist = self
    end
    def self.song_count
        return Song.all.size
    end
end