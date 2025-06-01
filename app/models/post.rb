class Post < ApplicationRecord
  belongs_to :user
  belongs_to :creator, class_name: "User"
  has_many :editor_posts
has_many :editors, through: :editor_posts, source: :editor
end
