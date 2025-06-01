class EditorPost < ApplicationRecord
  belongs_to :editor, class_name: "User"
  belongs_to :post
end
