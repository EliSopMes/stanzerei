class CleanAnfragesTable < ActiveRecord::Migration[7.0]
  def change
    rename_column :anfrages, :vorname_nachname, :vorname
    add_column :anfrages, :nachname, :string
    add_column :anfrages, :nummer, :integer
    rename_column :anfrages, :plz_ort, :plz
    add_column :anfrages, :ort, :string
  end
end
