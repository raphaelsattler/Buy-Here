class Telephone < ApplicationRecord
  validates :telephoneable, presence: true, length: { maximum: 255 }
  validates :ddi_number, presence: true, length: { maximum: 3 }
  validates :ddd_number, presence: true, length: { maximum: 2 }
  validates :telephone_number, presence: true, length: { maximum: 10 }
  validates :active, inclusion: { in: [true, false] }

<<<<<<< HEAD
  belongs_to :person
=======
>>>>>>> Merged development
  belongs_to :telephoneable, polymorphic: true
end
