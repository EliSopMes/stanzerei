class Flat < ApplicationRecord
  has_many_attached :photos
  has_many :requests

  validates :name, presence: true
end
