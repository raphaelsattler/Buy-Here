class Quote < ApplicationRecord
  validates :code, length: { maximum: 255 }, uniqueness: { case_sensitive: false },
                   presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :request_value, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :total_value, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :discount, presence: true,
                       numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
end
