class ChangeBeschreibung < ActiveRecord::Migration[7.0]
  def change
    rename_column :wohnungs, :beschreibung, :square_meters
    add_column :wohnungs, :galerie_da, :boolean, default: false
    add_column :wohnungs, :anzahl_zimmer, :integer
    add_column :wohnungs, :wohnzimmer_da, :string, default: "Wohnzimmer"
  end
end
