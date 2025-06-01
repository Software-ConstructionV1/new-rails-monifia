class RenameDobColumnInUsers < ActiveRecord::Migration[8.0]
  def change
    rename_column :users, :DOB, :dob
  end
end
