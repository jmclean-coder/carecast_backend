class ApplicationController < ActionController::API
    before_action :authorized
    SECRET = ENV['SECRET']
    def encode_token(payload) #payload is user instance
        JWT.encode(payload, SECRET) #issue a token, store payload in token
      end
    
      def auth_header
        request.headers['Authorization'] # Bearer <token>
      end
    
      def decoded_token
        if auth_header
          token = auth_header.split(' ')[1] #[Bearer, <token>]
          begin
            JWT.decode(token, SECRET, true, algorithm: 'HS256')
            # JWT.decode => [{ "user_id"=>"2" }, { "alg"=>"HS256" }]
          rescue JWT::DecodeError
            nil
          end
        end
      end
    
      def current_user
        if decoded_token
          user_id = decoded_token[0]['user_id'] #[{ "user_id"=>"2" }, { "alg"=>"HS256" }]
          user = User.find(user_id)
        else
          nil
        end
      end

      def is_logged_in
        puts (current_user, "hello, from logged_in?")
      !!current_user
      end

      def authorized
        render json: { message: 'Please log in' }, status: :unauthorized unless is_logged_in
      end

      def logout
        current_user = nil
      end


end
