class Rule < ApplicationRecord
  validates :code, uniqueness: true, presence: true
  validates :description, presence: true

  belongs_to :permission
end
