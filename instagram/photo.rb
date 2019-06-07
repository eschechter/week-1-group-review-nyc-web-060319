class Photo

    @@all = []
   

    attr_accessor :user

    def initialize
        @@all << self
    end

    def make_comment(text)
        new_c = Comment.new(text, self)
    end

    def comments
        Comment.all.select do |comment|
            comment.photo == self
        end
    end

    def self.all
        @@all
    end

end