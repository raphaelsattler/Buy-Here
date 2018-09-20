class ContactEmail < ApplicationRecord
  validates :email_address, presence: true, uniqueness: true, email_address: true
  validates :active, inclusion: { in: [true, false] }
end
