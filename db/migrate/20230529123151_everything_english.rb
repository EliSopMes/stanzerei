class EverythingEnglish < ActiveRecord::Migration[7.0]
  def change
    rename_table :wohnungs, :flats
    rename_column :flats, :preis, :price
    rename_column :flats, :anzahl_zimmer, :number_rooms
    remove_column :flats, :square_meters
    add_column :flats, :square_meters, :integer
    remove_column :flats, :wohnzimmer
    remove_column :flats, :bad
    remove_column :flats, :balkon
    remove_column :flats, :esszimmer
    remove_column :flats, :galerie
    remove_column :flats, :kueche
    remove_column :flats, :schlafzimmer
  end
end
