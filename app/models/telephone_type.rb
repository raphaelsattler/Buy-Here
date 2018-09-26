class TelephoneType < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :active, inclusion: { in: [true, false] }

  has_many :telephones, as: :telephoneable
end
