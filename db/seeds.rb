 
User.destroy_all
Post.destroy_all
Editor.destroy_all
EditorsPost.destroy_all

 
users = User.create([
  { name: 'mostafa', email: 'mostafa@mostafa.com' },
  { name: 'Ali Maloul', email: 'Ali@ali.com' },
  { name: 'mohamed', email: 'mohamed@mohamed.com' }
])

 
editors = Editor.create([
  { name: 'E1', email: 'e   1@e.com' },
  { name: 'E2', email: 'e2@e.com' }
])

 
posts = []
users.each do |user|
  2.times do |i|
    posts << Post.create(
      title: "Post #{i} by #{user.name}",
      content: "This is the content for post #{i} created by #{user.name}",
      creator: user
    )
  end
end

 
posts.each_with_index do |post, index|
   
  EditorsPost.create(post: post, editor: editors[index % editors.count])
  
   
  if index.even?
    EditorsPost.create(post: post, editor: editors[(index + 1) % editors.count])
  end
end

puts "Seeded #{User.count} users, #{Editor.count} editors, #{Post.count} posts, and #{EditorsPost.count} editor-post associations."