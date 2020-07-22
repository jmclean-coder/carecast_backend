class UserRatingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :rating, :created_at, :updated_at, :categories
  has_many :categories
end
