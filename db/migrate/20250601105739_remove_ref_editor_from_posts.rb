class RemoveRefEditorFromPosts < ActiveRecord::Migration[8.0]
  def change
    remove_reference :posts, :editor
  end
end
