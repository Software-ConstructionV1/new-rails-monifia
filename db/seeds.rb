# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
users = User.create!([
  { name: "Sana", email: "sana@example.com" },
  { name: "Ali", email: "ali@example.com" },
  { name: "Nour", email: "nour@example.com" }
])

post1 = Post.create!(title: "First Post", content: "Content 1", creator: users.first)
post2 = Post.create!(title: "Second Post", content: "Content 2", creator: users.second)

post1.editors << users[1]  
post2.editors << users[2]  