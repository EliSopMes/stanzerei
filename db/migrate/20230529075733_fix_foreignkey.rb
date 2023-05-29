class FixForeignkey < ActiveRecord::Migration[7.0]
  def change
    # change_column :anfrages, :wohnung_id, :integer
    remove_column :anfrages, :wohnung_id
    add_reference :anfrages, :wohnung, foreign_key: true
  end
end
