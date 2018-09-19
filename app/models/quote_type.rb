class QuoteType < ApplicationRecord
  validates :name, length: { maximum: 255 }, presence: true
  validates :order, format: { with: NUMERIC_REGEXP }, length: { maximum: 255 }, presence: true
  validates :active, inclusion: { in: [false, true] }
end
