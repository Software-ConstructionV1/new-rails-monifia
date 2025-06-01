class CreateEditorPostsTable < ActiveRecord::Migration[8.0]
  def change
    create_table :editor_posts do |t|
      t.references :editor, null: false, foreign_key: { to_table: :users }
      t.references :post, null: false, foreign_key: true
      t.timestamps
    end
  end
end
