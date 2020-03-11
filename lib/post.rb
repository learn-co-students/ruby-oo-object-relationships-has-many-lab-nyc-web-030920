class Post

  attr_reader :title 
  attr_accessor :author 

  @@all = []

  def initialize(new_title, new_author = nil)
    @title = new_title
    @author = new_author
    Post.all << self 
  end

  def self.all 
    @@all 
  end

  def author_name
    @author.name if @author
  end

end
