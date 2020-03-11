class Post
  attr_accessor :author, :title
  @@all = []
  def initialize(title)
    @title = title
    @@all << self
  end
  def self.title
    @title
  end
  def self.author
    
  end
  def author_name
    if author 
      author.name
    else
      nil
    end
  end
  def self.all
    @@all
  end
end