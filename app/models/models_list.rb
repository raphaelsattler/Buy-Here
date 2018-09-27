class ModelsList < ApplicationRecord
  validates :code, presence: true, uniqueness: true
  validates :name_of_model, presence: true, uniqueness: true

  has_many :rules
end
