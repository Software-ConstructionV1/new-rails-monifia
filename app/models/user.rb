class User < ApplicationRecord
  validates :name, :dob, :email, :phone_number, presence: true
  has_many :created_posts, class_name: 'Post', foreign_key: 'creator_id'
  has_many :editor_assignments
  has_many :edited_posts, through: :editor_assignments, source: :post


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
end
