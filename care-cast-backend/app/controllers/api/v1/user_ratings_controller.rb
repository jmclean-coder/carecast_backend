class Api::V1::UserRatingsController < ApplicationController
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

    def user_rating_params
        params.require(:user_rating).permit(:rating, :feeling_id, :category_id)
    end
end
