class  Api::V1::UserFeelingsController < ApplicationController
    def index 
        user_feelings = UserFeeling.all
    end

    def create
        feeling = Feeling.find_by(name: user_feeling_params["feeling"])
        new_feeling = current_user.feelings.create(name: feeling.name, main_word: feeling.main_word, need_condition: feeling.need_condition)
        if new_feeling.persisted?
            #No unhappy path neewded because input is highly controlled
            render json: FeelingSerializer.new(new_feeling), status: :created
        end

    end

    def destroy; end

    private

    def user_feeling_params
        params.require(:user_feeling).permit(:feeling)
    end

 
end
