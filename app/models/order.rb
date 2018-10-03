class Order < ApplicationRecord
  has_many :items
  belongs_to :quote
end
