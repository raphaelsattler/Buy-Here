class RoleRule < ApplicationRecord
  belongs_to :rule
  belongs_to :role
end
