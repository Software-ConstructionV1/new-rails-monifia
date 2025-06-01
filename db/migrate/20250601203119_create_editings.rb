class CreateEditings < ActiveRecord::Migration[8.0]
  def change
    create_table :editings do |t|
      t.references :post, foreign_key: true
       t.references :editor, foreign_key: { to_table: :users }


      t.timestamps
    end
  end
end
