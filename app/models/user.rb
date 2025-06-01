class User < ApplicationRecord
    has_many :posts
    has_many :created_posts, class_name: "Post", foreign_key: "creator_id"
    validates :name, :dob, :email, :phone_number, presence: true
    VALID_EMAIL_REGEX = /\A[^@\s]+@[^@\s]+\z/
    validates :email, format: { with: VALID_EMAIL_REGEX, message: "must be a valid email" }
    validates :email, uniqueness: true
end
