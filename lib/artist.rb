class Artist
    attr_accessor :name 
    @@all = []
  def initialize(name)
    @name = name
    Artist.all << self
  end

  def songs
    Song.all.select do |songs|
        songs.artist == self
    end
  end
  
  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name, self) 
  end

  def self.all
    @@all
  end
  # def song_count
  #   self.songs.count
  # end

  # def self.song_count
  #   total_songs = 0
  #   Artist.all.each do |artist_instance|
  #     total_songs += artist_instance.song_count
  #   end 
  # end

  def self.song_count
    Artist.all.count
  end


end