class Item < ApplicationRecord
  belongs_to :saleable, polymorphic: true
  has_many :requests
end
