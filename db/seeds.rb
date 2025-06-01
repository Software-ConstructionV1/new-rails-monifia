# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# المستخدمين
users = User.create([
  { name: "Abdo", email: "abdo@gmail.com" },
  { name: "Mona", email: "mona@gmail.com" }
])

posts = Post.create([
  { title: "Post1", body: "lalalla", user_id: users[0].id },
  { title: "Post2", body: "hahahah", user_id: users[1].id }
])

editors = Editor.create([
  { name: "Editor1" },
  { name: "Editor2" }
])

posts[0].editors << editors[0]
posts[1].editors << [editors[0], editors[1]]
