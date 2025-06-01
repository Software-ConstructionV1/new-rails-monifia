# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end



# crate users 
User.Create!(name: "Alaa", email: "alaa@gmail.com")
User.Create!(name: "Abdullh", email: "Abdullh@gmail.com")
User.Create!(name: "Mostafa", email: "Mostafa@gmail.com")

# create Editor
Editor.Create!(name: "E1")
Editor.Create!(name: "E2")

# post with creator 
user1=User.first 
user2=User.first 

post1=Post.Create!(title: "post1" ,content:"post 1" ,creator: user1)
post2=Post.Create!(title: "post2" ,content:"post 2" ,creator: user2)

# post with editor
editor1=Editor.first
postEditor.Create!(post: post1,editor: editor1)
