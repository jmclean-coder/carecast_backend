class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :full_name, :user_name, :user_ratings, :journal_entries, :list_items, :feelings, :user_ratings, :user_feelings, :todays_user_feelings, :todays_user_ratings
  #Add Scopes for below.
  
  attribute :todays_user_ratings do |user| 
    UserRating.where(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day, updated_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day, user_id: user.id )
  end

  attribute :todays_user_feelings do |user|
    UserFeeling.where(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day, updated_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day, user_id: user.id)
  end
end
