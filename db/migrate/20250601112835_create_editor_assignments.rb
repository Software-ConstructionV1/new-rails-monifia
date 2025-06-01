class CreateEditorAssignments < ActiveRecord::Migration[8.0]
  def change
    create_table :editor_assignments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
