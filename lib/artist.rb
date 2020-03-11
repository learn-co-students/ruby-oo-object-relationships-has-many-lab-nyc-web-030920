class Artist
  @@all = []
  attr_accessor :name
 
  def initialize(name)
    @name = name
    @@all << self
  end
 
  def add_song(song)
    song.artist = self
  end
  def add_song_by_name(name)
    newsong = Song.new(name)
    newsong.artist = self
  end
  def self.song_count
    Song.all.length
  end
 def self.all
   @@all
 end
  def songs
    Song.all.select {|song| song.artist == self}
  end
end