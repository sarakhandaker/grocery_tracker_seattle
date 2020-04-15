class GroceryStoresController < ApplicationController
    def index
        delete_old_missing_items
        if current_user
        @grocerystores=GroceryStore.list_by_distance(current_user)
        else 
            @grocerystores=GroceryStore.all
        end
    end
    def show
        delete_old_missing_items
        @store=GroceryStore.find(params[:id])
        @user= current_user
    end
    def delete_old_missing_items
        MissingItem.all.each {|item| item.delete if item.created_at<= 7.days.ago}
    end
end
