class Role < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :active, inclusion: { in: [true, false] }

  has_many :role_rules
  has_many :rules, through: :role_rules
end
