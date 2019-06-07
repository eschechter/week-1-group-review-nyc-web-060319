require 'pry'

require_relative 'comment.rb'
require_relative 'photo.rb'
require_relative 'user.rb'


p1 = Photo.new()
p2 = Photo.new()
p3 = Photo.new()

p1.make_comment("Cool photo, bro")
p1.make_comment("Nah, that's whack")
p1.make_comment("Powerful")

p2.make_comment("Fluffy!")
p2.make_comment("Rat with good PR")


u1 = User.new("Elma")
u2 = User.new("Cindy")

p1.user = u1
p2.user = u1

p3.user = u2





binding.pry