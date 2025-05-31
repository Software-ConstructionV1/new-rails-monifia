class User < ApplicationRecord
  validates :name, :email, :DOB, :address, :phone_number, presence: true
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email address" }
end
