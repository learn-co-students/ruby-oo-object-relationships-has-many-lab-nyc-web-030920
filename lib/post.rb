class Post
    attr_accessor :title, :author, :name
    @@all = []
    def initialize(title, author=nil)
        @title = title
        @author = author
        Post.all << self
    end

    def author_name
        if @author 
            @author.name 
        end
    end

    def self.all
        @@all
    end
end