class ContactEmail < ApplicationRecord
  validates :email, presence: true, email_address: true
  validates :active, inclusion: { in: [true, false] }
end
