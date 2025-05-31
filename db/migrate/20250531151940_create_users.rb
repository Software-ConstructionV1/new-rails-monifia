class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.date :DOB, null: false
      t.string :email, null: false
      t.string :phone_number, null: false
      t.string :address, null: false, default: ""


      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
