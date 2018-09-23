class Rule < ApplicationRecord
  validates :code, uniqueness: true, presence: true
  validates :description, presence: true
  validates :active, inclusion: { in: [true, false] }

  has_many :role_rules
  has_many :roles, through: :role_rules

  belongs_to :permission
end
