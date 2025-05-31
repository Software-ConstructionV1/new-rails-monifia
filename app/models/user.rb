class User < ApplicationRecord
  validates :name , presence: true
  validates :email, presence: true, email: true, uniqueness: true
  validates :phone_number , presence: true
end