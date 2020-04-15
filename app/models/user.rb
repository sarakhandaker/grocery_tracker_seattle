class User < ApplicationRecord
  include ActiveModel::Validations
    geocoded_by :address
    after_validation :geocode
    has_many :visits
    has_many :grocery_stores, through: :visits
    has_secure_password

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :address, presence: true
    validates :email, presence: true
    validates :email, uniqueness: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :password, length: { in: 6..20 }
   
    validates_with AddressValidator

    def ordered_visits
      self.visits.sort_by{|visit| visit.date}.reverse
    end

    def visits_dates
      self.visits.uniq(&:date)
    end
end
