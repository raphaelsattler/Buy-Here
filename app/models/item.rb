class Item < ApplicationRecord
  belongs_to :saleable, polymorphic: true
  belongs_to :request
end
