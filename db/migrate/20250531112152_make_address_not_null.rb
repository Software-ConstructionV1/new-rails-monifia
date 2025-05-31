class MakeAddressNotNull < ActiveRecord::Migration[8.0]
  def change
        change_column_null :users, :address, false
  end
end
