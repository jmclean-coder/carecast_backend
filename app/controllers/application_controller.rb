class ApplicationController < ActionController::API
    before_action :authorized
    SECRET = ENV['secret']
    def encode_token(payload) #payload is user instance
        JWT.encode(payload, SECRET) #issue a token, store payload in token
      end
    
      def auth_header
        request.headers['Authorization'] # Bearer <token>
      end
    
      def decoded_token
       
        if auth_header()
          # token = auth_header.split(' ')[1] #[Bearer, <token>]
          begin
            JWT.decode(auth_header, SECRET, true, algorithm: 'HS256')
            # JWT.decode => [{ "user_id"=>"2" }, { "alg"=>"HS256" }]
          rescue JWT::DecodeError
            nil
          end
        end
      end
    
      def current_user
        if decoded_token()
          user_id = decoded_token[0]['user_id'] #[{ "user_id"=>"2" }, { "alg"=>"HS256" }]
          user = User.find(user_id)
        else
          nil
        end
      end

      def logged_in?
        byebug
      !!current_user
      end

      def authorized
        render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
      end

      def logout
        current_user = nil
      end


end
