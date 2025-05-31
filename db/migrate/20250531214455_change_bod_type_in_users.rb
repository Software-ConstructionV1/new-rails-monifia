class ChangeBodTypeInUsers < ActiveRecord::Migration[8.0]
  def change
    change_column :users, :DOB, :date
  end
end
