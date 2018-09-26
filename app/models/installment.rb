class Installment < ApplicationRecord
  validates :off, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }, presence: true
  validates :value, numericality: { greater_than_or_equal_to: 0 }, presence: true
  validates :total_value, numericality: { greater_than_or_equal_to: 0 }, presence: true
  validates :payment_date, presence: true
  validates :due_date, presence: true

  belongs_to :payment_method, validate: true
  
  before_validation :calculate_total_value

  private

    def calculate_total_value
      self.total_value = value - (value * off / 100) if value
    end
end
