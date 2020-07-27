class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :full_name, :user_name, :user_ratings, :journal_entries, :list_items, :feelings, :user_ratings
  attribute :todays_user_ratings do |user| 
    UserRating.where(created_at: Date.today.all_day, updated_at: Date.today.all_day, user_id: user.id)
  end
end
