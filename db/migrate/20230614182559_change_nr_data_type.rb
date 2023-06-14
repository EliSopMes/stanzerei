class ChangeNrDataType < ActiveRecord::Migration[7.0]
  def change
    change_column :requests, :house_number, :string
  end
end
