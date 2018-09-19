class QuoteType < ApplicationRecord
  validates :name, length: { maximum: 255 }, presence: true, uniqueness: true
  validates :active, inclusion: { in: [false, true] }
end
