# db/seeds.rb
# db/seeds.rb

EditorPost.delete_all
Post.delete_all
User.delete_all

puts "Seeding users..."

User.create!(
  [
    { name: "Alice" },
    { name: "Bob" },
    { name: "Test" },
    { name: "test2" }
  ]
)

puts "Seeding posts..."

Post.create!(
  [
    { title: "First Post", user: User.first, creator: User.first },
    { title: "Second Post", user: User.first, creator: User.first },
    { title: "Third Post", user: User.second, creator: User.second },
    { title: "Fourth Post", user: User.second, creator: User.second }
  ]
)


EditorPost.create!(
  [
    { editor: User.third, post: Post.first },
    { editor: User.third, post: Post.second },
    { editor: User.last, post: Post.third },
    { editor: User.last, post: Post.last }
  ]
)
puts "✅ Seeding complete."
