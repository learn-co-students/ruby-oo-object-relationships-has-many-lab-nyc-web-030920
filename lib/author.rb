class Author
  @@all = []
  attr_accessor :name, :title
 
  def initialize(name)
    @name = name
    @@all << self
  end
 
  def add_post(post)
    post.author = self
  end
  def add_post_by_title(title)
    newpost = Post.new(title)
    newpost.author = self
  end
  def self.post_count
    Post.all.length
  end
 def self.all
   @@all
 end
  def posts
    Post.all.select {|post| post.author == self}
  end
end