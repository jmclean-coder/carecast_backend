class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :full_name, :user_name, :user_ratings, :journal_entries, :list_items, :feelings, :user_ratings
  # has_many :user_ratings
  # has_many :journal_entries
  # has_many :list_items
  # has_many :feelings
end
