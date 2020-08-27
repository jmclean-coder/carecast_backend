class Api::V1::CategoriesController < ApplicationController
    skip_before_action :authorized, only: [:create, :show, :update, :destroy]
    def index 
        categories = Category.all
        render json: categories, status: :ok
    end
end
