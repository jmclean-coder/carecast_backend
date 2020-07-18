class Api::V1::CategoriesController < ApplicationController
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

    def category_params
        params.require(:category).permit(:name)
    end
end
