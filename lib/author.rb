class Author
    attr_accessor :name 
    @@all = []
    def initialize(name)
        @name = name
        Author.all << self
    end

    def posts
        Post.all.select do |posts|
            posts.author = self
        end
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        Post.new(title, self)
    end

    def self.all
        @@all
    end 

    # def post_count
    #     self.post.count
    # end 

    # def self.post_count
    #     total_post = 0 
    #     Author.all.each do |author|
    #         total_post = author.post_count
    #     end
    # end
    def self.post_count
        Post.all.count
    end
end 