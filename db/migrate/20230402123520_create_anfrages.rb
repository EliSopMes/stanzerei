class CreateAnfrages < ActiveRecord::Migration[7.0]
  def change
    create_table :anfrages do |t|
      t.references :wohnung
      t.datetime :von
      t.datetime :bis
      t.integer :anzahl
      t.string :vorname_nachname
      t.string :strasse
      t.string :plz_ort
      t.string :telefon
      t.string :email
      t.text :nachricht
      t.timestamps
    end
  end
end
