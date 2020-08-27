class  Api::V1::UserFeelingsController < ApplicationController
    skip_before_action :authorized, only: [:create, :show, :update, :destroy]

    def index 
        user_feelings = UserFeeling.all
    end

    def create
        #figure out what is happening here and with strong params
        feeling = Feeling.find_by(name: params["_json"])
        user_feeling = current_user.feelings.create(feeling: feeling)
        if user_feeling.persisted?
            #No unhappy path neewded because input is highly controlled
            render status: :ok
        end

    end

    def destroy; end

    private

    # def user_feeling_params
    #     params.require(:user_feeling).permit(:feeling)
    # end
end
