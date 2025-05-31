class AddDetailsToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :dob, :date
    add_column :users, :phone_number, :string
    add_column :users, :address, :string


  end
end
