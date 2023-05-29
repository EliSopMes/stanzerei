class AddDateAgain < ActiveRecord::Migration[7.0]
  def change
    add_column :anfrages, :von, :date
    add_column :anfrages, :bis, :date
  end
end
