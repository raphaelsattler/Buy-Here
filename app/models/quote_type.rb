class QuoteType < ApplicationRecord
  validates :name, length: { maximum: 255 }, presence: true
  validates :order, numericality: { integer: true }, presence: true
  validates :active, inclusion: { in: [false, true] }
end
