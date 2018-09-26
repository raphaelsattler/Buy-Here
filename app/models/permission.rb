class Permission < ApplicationRecord
  validates :code, uniqueness: true, presence: true
  validates :name, uniqueness: true, presence: true
  validates :description, presence: true
end
