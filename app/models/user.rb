class User < ApplicationRecord
  has_many :posts, foreign_key: :creator_id
  has_many :editings, foreign_key: :editor_id
  has_many :edited_posts, through: :editings, source: :post
end