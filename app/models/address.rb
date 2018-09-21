class Address < ApplicationRecord
  validates :address_type, presence: true
  validates :street, presence: true
  validates :number, numericality: { only_integer: true }
  validates :district, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :country, presence: true
  validates :active, inclusion: { in: [true, false] }

  belongs_to :address_type
end
