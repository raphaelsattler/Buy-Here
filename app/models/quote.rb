class Quote < ApplicationRecord
  belongs_to :user
  belongs_to :quote_status
  belongs_to :quote_type
  belongs_to :person

  has_one :order

  validates :code, length: { maximum: 255 }, uniqueness: { case_sensitive: false },
                   presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :request_value, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :total_value, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :discount, presence: true,
                       numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
end
