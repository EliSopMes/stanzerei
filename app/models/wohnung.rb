class Wohnung < ApplicationRecord
  has_many_attached :photos

  validates :name, :beschreibung, presence: true
end
