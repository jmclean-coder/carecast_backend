class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]
    
    def dashboard
        render json: { user: UserSerializer.new(current_user)}, status: :accepted
    end

    def create 
        user = User.create(user_params)
        if user.valid?
            @token = encode_token(user_id: user.id)
            render json: { user: UserSerializer.new(user), jwt:@token }, status: :created
        else
            render json: { error: 'Failed to create', messages: user.errors.full_messages }, status: :not_acceptable
        end
    end

    def update

        current_user.update(user_params)
        if current_user.valid?
            render json: UserSerializer.new(current_user), status: :accepted
        else
            render json: {error: 'Failed to update', messages: user.errors.full_messages}, status: :not_acceptable
        end
    end

    def destroy
        current_user.destroy
        render json: {message: "Account Deleted!"}
    end

    private

    def user_params
        params.require(:user).permit(:full_name, :user_name, :password)
    end
end
