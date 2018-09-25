class Address < ApplicationRecord
  validates :addressable, presence: true
  validates :street, presence: true
  validates :number, numericality: { only_integer: true }
  validates :district, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :country, presence: true
  validates :active, inclusion: { in: [true, false] }

  belongs_to :addressable, polymorphic: true
  belongs_to :person
end
