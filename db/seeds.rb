users = User.create!([
  { name: "Asmaa Khaled", dob: "1999-01-01", email: "asmaa@gmail.com", phone_number: "01000000001" },
  { name: "Mona Adel", dob: "1998-05-10", email: "mona@gmail.com", phone_number: "01000000002" },
  { name: "Youssef Samir", dob: "2000-07-15", email: "youssef@gmail.com", phone_number: "01000000003" },
  { name: "Ahmed Nabil", dob: "1997-03-20", email: "ahmed@gmail.com", phone_number: "01000000004" }
])


posts = Post.create!([
  { title: "First Post", content: "This is the first post", user: users.first },
  { title: "Second Post", content: "This is the second post", user: users.second },
  { title: "Third Post", content: "This is the third post", user: users.first }
])

posts.first.editors << users[2] 
posts.first.editors << users[3] 
posts.second.editors << users[1] 
