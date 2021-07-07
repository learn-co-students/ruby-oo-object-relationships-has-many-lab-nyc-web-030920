class Artist
attr_accessor :name, :artist
def initialize (name)
@name= name
@artist=artist
end
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