class Artist
    attr_accessor :name

    @@all = []
  
    def initialize(name)
      @name = name
    @@all << self 
    end

    def save
        @@all << self
      end
     
      def self.all
        @@all
      end

      def songs
        Song.all.select {|song| song.artist == self}

        def artist_name
            artist.name if artist
          end
      end
end

### clean up below later

adele = Artist.new("Adele")
hello = Song.new("Hello")
 
hello.artist = adele
hello.artist.name 

Song.all.select {|song| song.artist == adele}






    
