class UserFeelingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :feeling_id, :created_at, :updated_at
end
