require 'geocoder'
class GroceryStore < ApplicationRecord
    geocoded_by :address
    after_validation :geocode
    has_many :visits
    has_many :users, through: :visits
    has_many :missing_items
    has_many :items, through: :missing_items

    def name
        location = Geocoder.search(self.address)
        location.first
        if location.suburb != nil
            "#{self.chain} #{location.suburb}"
        else  
            "#{self.chain}- #{location.neighbourhood}"
        end
    end

    def self.list_by_distance(user)
        self.all.sort_by{|store| store.distance_to(user) }
    end
    def chain_name
        "#{self.chain}- #{self.address}"
    end
end
