class PaymentMethod < ApplicationRecord
  validates :name, length: { maximum: 255 }, presence: true, uniqueness: { case_sensitive: false }
  validates :due, inclusion: [false, true]
  validates :active, inclusion: [true, false]
  validates :rate, numericality: { greater_than_or_equal_to: 0 }, presence: true

  has_many :installments
end
