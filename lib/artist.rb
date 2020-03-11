class Artist
    attr_accessor :name, :songs
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

    def add_song_by_name(song)
        Song.new(song, self)
    end

        def self.song_count
        Song.all.count
        end
end