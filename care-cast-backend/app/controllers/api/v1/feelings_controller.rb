class Api::V1::FeelingsController < ApplicationController
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
        params.require(:feeling).permit(:name)
    end
end
