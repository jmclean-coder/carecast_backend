class Api::V1::FeelingsController < ApplicationController
    def index 
        feelings = Feeling.all
        render json: feelings
    end

    def create 

    end

    def destroy

    end

    private

    def feelings_params
        params.require(:feeling).permit(:name)
    end
end
