class User < ApplicationRecord
  validates :username, uniqueness: true, presence: true
  validates :email, presence: true, email_address: true
  validates :password_digest, presence: true
  validates :active, inclusion: { in: [true, false] }

  has_many :people
  has_many :memberships, dependent: :destroy
  has_many :groups, through: :memberships

  belongs_to :role
end
