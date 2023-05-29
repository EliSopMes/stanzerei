require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

wohnung = Wohnung.find(8)

url = ["https://www.alte-stanzerei.de//files/w11_wohnen.jpg", "https://www.alte-stanzerei.de//files/w08_essen.jpg",
       "https://www.alte-stanzerei.de//files/w11_flur.jpg", "https://www.alte-stanzerei.de//files/w08_terasse.jpg",
       "https://www.alte-stanzerei.de//files/w11_kochen.jpg", "https://www.alte-stanzerei.de//files/w11_schlafen.jpg",
       "https://www.alte-stanzerei.de//files/w11_bad_1.jpg"]

image = URI.open(url[0])
wohnung.photos.attach(io: image, filename: "AS_11_wohn.jpg", content_type: "image/jpg")
# image = URI.open(url[1])
# wohnung.photos.attach(io: image, filename: "AS_8_ess.jpg", content_type: "image/jpg")
# image = URI.open(url[2])
# wohnung.photos.attach(io: image, filename: "AS_11_terasse.jpg", content_type: "image/jpg")

# image = URI.open(url[1])
# wohnung.photos.attach(io: image, filename: "AS_11_flur.jpg", content_type: "image/jpg")
# image = URI.open(url[2])
# wohnung.photos.attach(io: image, filename: "AS_11_kueche.jpg", content_type: "image/jpg")
# image = URI.open(url[3])
# wohnung.photos.attach(io: image, filename: "AS_11_schlaf.jpg", content_type: "image/jpg")
# image = URI.open(url[4])
# wohnung.photos.attach(io: image, filename: "AS_11_bad.jpg", content_type: "image/jpg")
