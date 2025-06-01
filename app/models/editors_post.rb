class EditorsPost < ApplicationRecord
  belongs_to :post
  belongs_to :editor
end