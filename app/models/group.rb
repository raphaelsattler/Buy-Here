class Group < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :active, inclusion: { in: [true, false] }

  has_many :memberships, dependent: :destroy
  has_many :users, through: :memberships
end
