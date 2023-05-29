class EverythingEnglishPartTwo < ActiveRecord::Migration[7.0]
  def change
    rename_table :anfrages, :requests
    rename_column :requests, :anzahl, :number_guests
    rename_column :requests, :vorname, :first_name
    rename_column :requests, :nachname, :last_name
    rename_column :requests, :strasse, :street
    rename_column :requests, :plz, :postal_code
    rename_column :requests, :telefon, :phone
    rename_column :requests, :nachricht, :message
    rename_column :requests, :nummer, :house_number
    rename_column :requests, :ort, :city
    rename_column :requests, :wohnung_id, :flat_id
    rename_column :requests, :von, :from
    rename_column :requests, :bis, :to
  end
end
