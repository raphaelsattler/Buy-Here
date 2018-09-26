class Item < ApplicationRecord
  belongs_to :saleable, polymorphic: true, optional: false
end
