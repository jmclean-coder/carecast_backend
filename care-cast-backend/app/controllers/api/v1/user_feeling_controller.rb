class UserFeelingController < ApplicationController
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
        params.require(:user_feeling).permit(:feeling_id, :user_id)
    end
end
