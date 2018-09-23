class Rule < ApplicationRecord
  validates :code, uniqueness: true, presence: true
  validates :description, presence: true

  has_many :role_rules

  belongs_to :permission
end
