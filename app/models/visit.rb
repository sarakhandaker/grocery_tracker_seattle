class Visit < ApplicationRecord
    belongs_to :user
    belongs_to :grocery_store
    validates :notes, length: { maximum: 500 }
    validates :user, :uniqueness => {:scope => [:date, :grocery_store], 
    message: ->(object, data) do
        "#{object.user.name}, the visit to this store on this date has already been saved."
      end}

      def user_emails(date)
        arr=Visit.all.select{|visit| visit.date==date)
        arr=arr.map{|visit| visit.user}.uniq
      end
end
