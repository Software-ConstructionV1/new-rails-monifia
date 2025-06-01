# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user1 = User.create(name: "Aya", dob: "1999-01-01", email: "aya@example.com", phone_number: "0100000001",address: "Cairo")
user2 = User.create(name: "Mohamed", dob: "1995-03-10", email: "mo@example.com", phone_number: "0100000002",address: "Alex")
user3 = User.create(name: "Nour", dob: "1998-06-15", email: "nour@example.com", phone_number: "0100000003",  address: "Monofia")


post1 = Post.create(title: "Intro to Rails", content: "Rails basics...", creator: user1)
post2 = Post.create(title: "Active Record Guide", content: "Associations and more...", creator: user2)


post1.editors << user2
post1.editors << user3
post2.editors << user1
