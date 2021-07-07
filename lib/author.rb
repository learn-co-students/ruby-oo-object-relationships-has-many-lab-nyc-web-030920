require 'pry'
class Author
    attr_accessor :name
    # @@all = []

    def initialize(name)
        @name = name
        # Author.all << self
    end 

    def posts
       Post.all.select do |post|
        post.author == self 
       end 
    end 

    def add_post(post)
        post.author =self 
    end 
    
    def add_post_by_title(title)
        Post.new(title, self)
    end 

    def self.post_count
        Post.all.count

        # total = 0
        # Author.all.each do |author|
        #     total += author.posts.count
        # end 
        # total 
    end 



    
end 
