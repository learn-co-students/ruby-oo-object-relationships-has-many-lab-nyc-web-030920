class Artist
    attr_accessor :name
    def initialize(name)
        @name = name
    end

    def songs
        Song.all.select do |song_instance|
            song_instance.artist == self
        end
    end

    def add_song(song)
        song.artist = self
    end
    def add_song_by_name(name)
        Song.new(name, self)
    end


    def song_count
        self.songs.count
    end

    def self.song_count
        Song.all.count
    end

end