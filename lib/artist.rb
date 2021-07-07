class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  #returns an array of songs by the artist
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    Song.new(name, self)
  end

  def self.song_count
    Song.all.count
  end


end