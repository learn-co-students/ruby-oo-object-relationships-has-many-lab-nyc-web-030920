class Post 
  attr_reader :title
  attr_accessor :author
  @@all = []
  def initialize(title, author=nil)
    @title = title
    @author = author
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