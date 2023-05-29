class TestWithoutDate < ActiveRecord::Migration[7.0]
  def change
    remove_column :anfrages, :von
    remove_column :anfrages, :bis
  end
end
