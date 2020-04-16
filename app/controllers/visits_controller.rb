class VisitsController < ApplicationController
    before_action :redirect_user
    before_action :set_visit, only: [:show, :edit, :update, :destroy]
    
    def new
        @visit = current_user.visits.build
    end
    
    def create
        @visit = Visit.new(visit_params)
        @visit.user_id = current_user.id if current_user
        if @visit.save
            assign_missing_items
          redirect_to visit_path(@visit)
        else
            flash[:error_messages]=@visit.errors.full_messages
        render :new
        end
    end

    def destroy
        @visit.destroy
        redirect_to user_path(current_user)
    end
    
    private

    def set_visit
        @visit = Visit.find(params[:id])
    end

    def visit_params
        params.require(:visit).permit(:grocery_store_id, :notes, :user_id, :date, grocery_store: [:item_ids])
    end

    def assign_missing_items
        store=GroceryStore.find(params[:visit][:grocery_store_id].to_i)
        ids=params[:grocery_store][:item_ids].map{ |id| id.to_i }
        ids.each do |id| 
            MissingItem.create(grocery_store_id: store.id, item_id: id, date: @visit.date)
        end
    end

end