require 'geocoder'
class GroceryStore < ApplicationRecord
    geocoded_by :address
    after_validation :geocode
    has_many :visits
    has_many :users, through: :visits
    has_many :missing_items
    has_many :items, through: :missing_items

    def self.list_by_distance(user)
        self.all.sort_by{|store| store.distance_to(user) }
    end
    def chain_name
        "#{self.chain}- #{self.address}"
    end

    def self.most_visits
        self.all.sort_by{|store| -store.visits.count }.slice(0, 3)
    end 
    def self.least_visits
        self.all.sort_by{|store| store.visits.count }.slice(0, 3)
    end 

    def ordered_visits
        self.visits.sort_by{|visit| visit.date}.reverse
      end
end
