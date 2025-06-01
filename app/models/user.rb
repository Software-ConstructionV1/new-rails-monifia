
class User < ApplicationRecord
    validates :name, presence: true
    validates :dob, presence: true
    validates :email, presence: true
    validates :phone_number, presence: true

    validates :email, 
    format: { 
      with: /\w+@[a-zA-Z]+\.[a-zA-Z]+/i,
      message: "must be a valid email address"
    }

    validates :email, uniqueness: { case_sensitive: false }

end
