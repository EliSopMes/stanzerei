class Wohnung < ApplicationRecord
  has_many_attached :photos
  has_many :anfrages

  validates :name, presence: true
end
