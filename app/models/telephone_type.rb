class TelephoneType < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :telephones, as: :telephoneable
end
