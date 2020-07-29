class UserRatingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :rating, :created_at, :updated_at, :user_id, :category_id
end
