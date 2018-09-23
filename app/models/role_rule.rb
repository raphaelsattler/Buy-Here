class RoleRule < ApplicationRecord
  validates :active, inclusion: { in: [true, false] }

  belongs_to :rule
  belongs_to :role
end
