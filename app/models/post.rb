class Post < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :editings
  has_many :editors, through: :editings, source: :editor
end