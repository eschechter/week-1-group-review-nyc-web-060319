class User

    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all
    end

    def photos
        Photo.all.select do |photo|
            photo.user == self
        end
    end

    def comments
        self.photos.map do |photo|
            photo.comments
        end.flatten
    end
end