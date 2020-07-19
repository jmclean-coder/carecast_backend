class Api::V1::ListItemsController < ApplicationController
    
    def index
        list_items = ListItem.where(user_id: current_user.id)
        render json: list_items
    end
    
    def create 
        list_item = ListItem.create(list_item_params)
        if list_item.valid?
            render json: ListItemSerializer.new(list_item), status: :created
        else
            render json: { error: 'Failed to create', messages: list_item.errors.full_messages }, status: :not_acceptable
        end
    end

    def update
        list_item = ListItem.find(params[:id])
        list_item.update
        if list_item.valid?
            render json: ListItemSerializer.new(list_item), status: :accepted
        else
            render json: { error: 'Failed to update', messages: list_item.errors.full_messages }, status: :not_acceptable
        end

    end

    def destroy
        list_item = ListItem.find(params[:id])
        list_item.destroy

    end

    private

    def list_item_params
        params.require(:list_item).permit(:content)
    end
end
