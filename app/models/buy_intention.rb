class BuyIntention < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
