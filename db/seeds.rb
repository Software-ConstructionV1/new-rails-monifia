# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

creator1 = User.create(name: "ahmed")
creator2 = User.create(name: "ali")
editor1 = User.create(name: "editor A")
editor2 = User.create(name: "editor B")

post1 = Post.create(title: "Post 1", content: "Hello everyone!", creator: creator1)
post2 = Post.create(title: "Post 2", content: "Learning Rails is fun!", creator: creator2)

post1.editors << editor1
post1.editors << editor2
post2.editors << editor1
