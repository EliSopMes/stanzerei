class ChangeDatetimeInAnfragen < ActiveRecord::Migration[7.0]
  def change
    change_column :anfrages, :von, :date
    change_column :anfrages, :bis, :date
  end
end
