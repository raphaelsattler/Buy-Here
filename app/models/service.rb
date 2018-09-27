class Service < ApplicationRecord
  validates :code, numericality: { only_integer: true, greater_than: 0 }, presence: true, length: { maximum: 255 }, uniqueness: { case_sensitive: false }
  validates :name, length: { maximum: 255 }, presence: true, uniqueness: { case_sensitive: false }
  validates :description, presence: true
  validates :active, inclusion: [true, false]
  validates :value, numericality: { greater_than_or_equal_to: 0 }, presence: true
end
