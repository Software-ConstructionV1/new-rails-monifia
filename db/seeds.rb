users = User.create([
  { name: "zeyad", email: "z@gmail.com" },
  { name: "zezo", email: "ze@gmail.com" }
])

posts = Post.create([
  { title: "Post 1", body: "Hello World by zeyad", user_id: users[0].id },
  { title: "Post 2", body: "this is the second post", user_id: users[1].id }
])

editors = Editor.create([
  { name: "Editor A" },
  { name: "Editor B" }
])

posts[0].editors << editors[0]
posts[1].editors << [editors[0], editors[1]]