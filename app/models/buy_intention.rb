class BuyIntention < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :people
end
