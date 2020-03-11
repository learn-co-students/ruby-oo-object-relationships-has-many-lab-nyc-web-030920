class Post
    @@posts
    attr_accessor :title, :author
    def initialize(title)
        @title = title 
        @@posts << self
    end 

end 