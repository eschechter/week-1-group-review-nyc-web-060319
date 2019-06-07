class Comment

    @@all = []

    attr_accessor :text, :photo

    def initialize(text, photo)
        @text = text
        @photo = photo
        @@all << self
    end

    def self.all 
        @@all
    end
end