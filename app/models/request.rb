class Request < ApplicationRecord
  belongs_to :item, optional: false

  validates :off, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }, presence: true
end
