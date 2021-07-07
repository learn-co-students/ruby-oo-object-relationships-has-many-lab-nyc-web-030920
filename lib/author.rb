class Author
    attr_accessor :name, :author
    def initialize (name)
    @name= name
    @author=author
    end
    def posts
    Post.all.select do |post|
        post.author == self
    end
    end
    
    def add_post(post)
    post.author = self
    end
    
    def add_post_by_title(name)
        Post.new(name, self)
    
    end
    
    def self.post_count
    Post.all.count
    end


    end