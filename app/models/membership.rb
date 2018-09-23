class Membership < ApplicationRecord
  validates :active, inclusion: { in: [true, false] }

  belongs_to :user
  belongs_to :group
end
