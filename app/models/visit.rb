class Visit < ApplicationRecord
    belongs_to :user
    belongs_to :grocery_store
    accepts_nested_attributes_for :grocery_store
    validate :date_cannot_be_in_the_future
    validates :notes, length: { maximum: 500 }
    validates :user, :uniqueness => {:scope => [:date, :grocery_store], 
    message: ->(object, data) do
        "#{object.user.name}, the visit to this store on this date has already been saved."
      end}
      
      def date_formated
        self.date.strftime("%d of %B, %Y") 
      end

      def date_cannot_be_in_the_future
        errors.add(:date, "can't be in the future") if !date.blank? and date > Date.today
      end

      def self.sick_users(sick_visit)
        relevant_visits= self.all.select {|visit| visit.user==sick_visit.user && visit.date>=sick_visit.date}
        visit_array=[]
        relevant_visits.each do |vis|
          visit_array+= self.all.select{|visit| visit.grocery_store==vis.grocery_store && visit.date==vis.date}
        end
        users=visit_array.map{|visit| visit.user}.uniq
        users.each do |user| 
          user.update_column(:notify, true)
          user.update_column(:sick_date, sick_visit.date)
        end
        users.count
      end
      
      def self.busy_day
        day=self.group_by_day_of_week(:date).count.max_by{ |k, v| v }[0]
        case day
        when 0
          "Sunday"
        when 1
          "Monday"
        when 2
          "Tuesday"
        when 3
          "Wednesday"
        when 4
          "Thursday"
        when 5
          "Friday"
        when 6
          "Saturday"
        end
      end

      def self.not_busy_day
        day=self.group_by_day_of_week(:date).count.min_by{ |k, v| v }[0]
        case day
        when 0
          "Sunday"
        when 1
          "Monday"
        when 2
          "Tuesday"
        when 3
          "Wednesday"
        when 4
          "Thursday"
        when 5
          "Friday"
        when 6
          "Saturday"
        end
      end

end
