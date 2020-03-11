require "pry"
class Song
attr_accessor :name, :artist
@@all=[]
def intialize(name)
@name=name
binding.pry
@@all << self
end

def self.all 
@@all
end

end