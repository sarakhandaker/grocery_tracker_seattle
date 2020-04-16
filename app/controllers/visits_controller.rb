class VisitsController < ApplicationController
    before_action :redirect_user
    before_action :set_visit, only: [:show, :edit, :update, :destroy]
    
    def new
        @visit = current_user.visits.build
        if params[:admin] == "true"
            @user.update_column(:notify, false)
            render 'visits/admin_new'
        end
    end
    
    def create
        if params[:visit][:grocery_store_id]
            @visit = Visit.new(visit_params)
        else
            @visit = Visit.new(admin_visit_params)
        end
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

    def admin_visit_params
        params.require(:visit).permit(:notes, :user_id, :date, grocery_store: [:item_ids], grocery_store_attributes: [:chain, :address])
    end

    def assign_missing_items
        if params[:visit][:grocery_store_id]
            store=GroceryStore.find(params[:visit][:grocery_store_id].to_i)
        else 
            store=GroceryStore.all.last
        end 
        ids=params[:grocery_store][:item_ids].map{ |id| id.to_i }
        ids.each do |id| 
            MissingItem.create(grocery_store_id: store.id, item_id: id, date: @visit.date) if id>0
        end
    end

end