class Group < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :active, inclusion: { in: [true, false] }

  has_many :memberships
  has_many :users, through: :memberships
  has_many :groups, class_name: "Group", foreign_key: :parent_id

  belongs_to :parent, class_name: "Group", optional: true
end
