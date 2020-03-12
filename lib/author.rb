class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  #an array of posts by this author
  def posts
    Post.all.select do |post|
      post.author == self
    end
  end

  #creates a new post instance and link it to author
  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    Post.new(title, self)
  end

  def self.post_count
    Post.all.count
  end


end
