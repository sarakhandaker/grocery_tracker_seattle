class Item < ApplicationRecord
    has_many :missing_items
    has_many :grocery_stores, through: :missing_items


    def self.search(query)
        if query.present?
          where('NAME like ?', "%#{query}%")
        else
          self.all
        end
      end
end
