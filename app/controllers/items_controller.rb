class ItemsController < ApplicationController
    def index
            @items = Item.search(params[:query])
    render 'index'
    end
    def show
        @item=Item.find(params[:id])
        if current_user
        @stores=GroceryStore.list_by_distance(current_user).select{|store| !store.items.include?(@item)}
        else 
            @stores=GroceryStore.all.select{|store| !store.items.include?(@item)}
        end
    end
end