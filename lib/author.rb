class Author 
  attr_accessor :name 
  @@all = []

  def initialize(new_name)
    @name = new_name
    Author.all << self 
  end

  def self.all
    @@all 
  end

  def posts
    Post.all.select do |post_instance|
      post_instance.author == self 
    end
  end

  def add_post(new_post)
    new_post.author = self
  end

  def add_post_by_title(new_title)
    post = Post.new(new_title, self)
  end

  def self.post_count 
    Post.all.count 
  end


end

