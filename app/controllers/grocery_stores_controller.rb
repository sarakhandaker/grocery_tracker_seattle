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
        @items=@store.items.uniq
    end
    def delete_old_missing_items
        MissingItem.where(['date < ?', 7.days.ago]).destroy_all
    end
end
