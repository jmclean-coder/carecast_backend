class Api::V1::UserRatingsController < ApplicationController
    def index 
    end

    def show
    end

    def create
        rating = UserRating.create(rating: user_rating_params[:rating], category_id: user_rating_params[:category_id], user_id: current_user.id )
        if rating.valid?
            render json: UserRatingSerializer.new(rating), status: :created
        else
            render json: { error: 'Failed to create', messages: rating.errors.full_messages }, status: :not_acceptable
        end
    end

    def update
        rating = UserRating.find(params[:id])
        rating.update(user_rating_params)
        if rating.valid?
            render json: UserRatingSerializer.new(rating), status: :accepted
        else
            render json: { error: 'Failed to update', messages: rating.errors.full_messages }, status: :not_acceptable
            
        end
       
    end

    def destroy
    end

    private

    def user_rating_params
        params.require(:user_rating).permit(:rating, :category_id, :user_id)
    end
end
