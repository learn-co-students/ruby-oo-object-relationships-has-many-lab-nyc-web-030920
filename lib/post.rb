require "pry"
class Post
attr_accessor :title, :author
@@all=[]

def initialize(name, artist=nil)
@title=name
@author = artist
Post.all << self
end

def self.all 
@@all
end
def author_name
    if @author
    @author.name
    end
end
end



