class Song
    @@songs = []
    attr_accessor :artist, :name
    def initialize(name)
        @name = name
        @@songs << self
    end
    def self.all
        @@songs
    end
end