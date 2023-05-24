class Anfrage < ApplicationRecord
  belongs_to :wohnung
  belongs_to :user
end
