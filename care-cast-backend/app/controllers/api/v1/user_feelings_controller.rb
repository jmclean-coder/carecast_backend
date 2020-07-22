class  Api::V1::UserFeelingsController < ApplicationController
    def index 
        user_feelings = UserFeeling.all
    end

    def show

    end

    def create
        feeling = Feeling.find_by(name: params["_json"])
        user_feeling= UserFeeling.create(user_id: current_user.id, feeling_id: feeling.id)
        if user_feeling.valid?
            render json: feeling
        end

    end

    def update

    end

    def destroy

    end

    private

    # def user_feeling_params
    #     params.require(:user_feeling).permit(:feeling)
    # end
end
