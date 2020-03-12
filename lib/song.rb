class Song 
  @@all=[]
  attr_reader :name
  attr_accessor :artist
  def initialize(name, artist=nil)
    @name=name
    @artist=artist
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def artist_name
    if @artist
    @artist.name
    end
  end
end