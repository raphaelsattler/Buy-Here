class QuoteType < ApplicationRecord
  validates :name, length: { maximum: 255 }, presence: true, uniqueness: {case_sensitive: false}
  validates :active, inclusion: { in: [false, true] }
end
