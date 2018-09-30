class Quote < ApplicationRecord
  belongs_to :user
  belongs_to :quote_status
  belongs_to :quote_type
  belongs_to :person

  has_one :order

  validates :code, length: { maximum: 255 }, uniqueness: { case_sensitive: false },
                   presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :request_value, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :discount, presence: true,
                       numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
  validates :total_value, numericality: { greater_than_or_equal_to: 0 }, presence: true

  before_validation :calculate_total_value

  private

    def calculate_total_value
      self.total_value = request_value - (request_value * (discount / 100))  if request_value && discount
    end
end
