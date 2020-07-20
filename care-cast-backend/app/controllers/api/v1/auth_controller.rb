class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]
    
    def create
        user = User.find_by(user_name: user_login_params[:username])
        #User#authenticate from bcrypt checking the pass against the salted
        if user && user.authenticate(user_login_params[:password])
            token = encode_token(user)
            render json: {id: user.id, username: user.user_name, jwt: token }, status: :accepted
        else
            render json: {message: 'Invalid login credentials.'}, status: :unauthorized
        end
    end

    private
 
    def user_login_params
      # params { user: {username: 'Chandler Bing', password: 'hi' } }
      params.require(:auth).permit(:username, :password)
    end
end
