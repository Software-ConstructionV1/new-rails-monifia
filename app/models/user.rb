class User < ApplicationRecord
  has_many :posts
  has_many :created_Posts, class_name: "Post"
  has_many :editor_posts, foreign_key: :editor_id
  has_many :edited_posts, through: :editor_posts, source: :post
end
