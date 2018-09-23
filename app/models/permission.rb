class Permission < ApplicationRecord
  validates :code, uniqueness: true, presence: true
  validates :name, uniqueness: true, presence: true
  validates :description, presence: true
  validates :active, inclusion: { in: [true, false] }

  has_many :rules
end
