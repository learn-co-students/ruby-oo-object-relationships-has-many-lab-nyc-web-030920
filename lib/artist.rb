class Artist
attr_accessor :name

def initialize (name)
@name=name
end


def songs
Song.all select do {|song|  song.artist == self.name}
end

end