class Song
  attr_accessor :songs
  @@all = []

  def initialize(song)
    @song = song
  end
  
  def artist=(artist)
    @artist = artist
  end

  def self.all
    @all
  end

  def name
  end

  def artist
  end

  def artist_name
  end
  
end
