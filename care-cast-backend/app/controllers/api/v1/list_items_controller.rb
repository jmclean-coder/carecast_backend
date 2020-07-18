class Api::V1::ListItemsController < ApplicationController
    def index 

    end

    def show

    end

    def create 

    end

    def update

    end

    def destroy

    end

    private

    def feelings_params
        params.require(:list_item).permit(:content)
    end
end
