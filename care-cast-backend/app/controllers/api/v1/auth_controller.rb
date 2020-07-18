class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]
    
    def create
        user = User.find_by(user_name: user_login_params[:user_name])
        #User#authenticate from bcrypt checking the pass against the salted
        if user && user.authenticate(user_login_params[:password])
            token = encode_token({ user_id: user.id })
            render json: {UserSerializer.new(@user), jwt: token }, status: :accepted
        else
            render json: {message: 'Invalid login credentials.'}
        end
    end

    private
 
    def user_login_params
      # params { user: {username: 'Chandler Bing', password: 'hi' } }
      params.require(:user).permit(:username, :password)
    end
end
