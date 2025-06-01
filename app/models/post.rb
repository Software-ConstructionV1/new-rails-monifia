class Post < ApplicationRecord
  belongs_to :creator, class_name: "User"

  # After Create Editor
  has_many :post_editors
  has_many :posts, through: :post_editors


end

