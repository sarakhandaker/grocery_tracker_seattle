class GroceryStoresController < ApplicationController
    def index
        if current_user
        @grocerystores=GroceryStore.list_by_distance(current_user)
        else 
            @grocerystores=GroceryStore.all
        end
    end
    def show
        @store=GroceryStore.find(params[:id])
        @user= current_user
    end
end
