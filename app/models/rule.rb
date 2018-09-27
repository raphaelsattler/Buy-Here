class Rule < ApplicationRecord
  validates :code, uniqueness: true, presence: true
  validates :description, presence: true
  validates :active, inclusion: { in: [true, false] }

  has_many :role_rules, dependent: :destroy
  has_many :roles, through: :role_rules
  has_many :user_rules, dependent: :destroy
  has_many :users, through: :user_rules

  belongs_to :permission
  belongs_to :models_list
end
