class CreateWohnungs < ActiveRecord::Migration[7.0]
  def change
    create_table :wohnungs do |t|
      t.string :name
      t.text :beschreibung
      t.integer :preis
      t.string :wohnzimmer
      t.string :bad
      t.string :balkon
      t.string :esszimmer
      t.string :galerie
      t.string :kueche
      t.string :schlafzimmer
      t.timestamps
    end
  end
end
