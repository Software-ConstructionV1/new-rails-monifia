class User < ApplicationRecord
    validates :name, :DOB, :email, :phone_number, presence: true
    VALID_EMAIL_REGEX = /\A[^@\s]+@[^@\s]+\z/
    validates :email, format: { with: VALID_EMAIL_REGEX, message: "must be a valid email" }
    validates :email, uniqueness: true
end
