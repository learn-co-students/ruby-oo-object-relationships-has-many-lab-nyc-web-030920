class Artist

  attr_accessor :name, :songs
  @@songs = []

  def initialize(name)
    @name = name
  end

  def songs
    Songs.all
  end

  def add_song(song)
    
  end

  def add_song_by_name
  end

  def self.song_count
  end
  

end
