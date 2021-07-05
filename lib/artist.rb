class Artist 
    attr_accessor :name 

    #class variable that keeps track of every Artist that has been created
    @@all = []

    def initialize(new_name)
        @name = new_name
        Artist.all << self
    end

    def self.all 
        @@all 
    end

    def songs
        Song.all.select do |song_instance|
            song_instance.artist == self
        end
    end

    def add_song(new_song)
        new_song.artist = self
    end

    def add_song_by_name(new_song_name)
        new_song = Song.new(new_song_name, self)
    end

    def song_count 
        self.songs.count 
    end


    def self.song_count 
        #total = 0
        #Artist.all.each do |artist_instance|
        #    total += artist_instance.song_count
        #end
        Song.all.count 
    end

end



