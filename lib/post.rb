class Post
    @@all = []
    @@count = 0 
    attr_accessor :title, :author
    def initialize(title)
        @title = title 
        @@all << self
        @@count += 1 
        @author
    end 

    def self.all
        @@all 
    end 
    
    def author_name
        if author
            author.name
        else
            nil
        end
    end 
end 