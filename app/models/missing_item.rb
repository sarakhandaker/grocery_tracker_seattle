class MissingItem < ApplicationRecord
   belongs_to :item
   belongs_to :grocery_store
end
