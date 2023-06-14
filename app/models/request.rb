class Request < ApplicationRecord
  belongs_to :flat

  validates :first_name, :last_name, :from, :to, :number_guests, presence: true

  validates :phone, presence: true, unless: Proc.new{ |u| u.email.present? }
  validates :email, presence: true, unless: Proc.new{ |u| u.phone.present? }

  validates :email, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Keine valide Email Adresse" }
  validates :phone, format: { with: /\A(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[- ]?\d{3}[- ]?\d{4}\z/, message: "Keine valide Telefonnummer" }
  validates :to, comparison: { greater_than: :from, message: "Das Eincheckdatum muss vor dem Auscheckdatum liegen." }
end
