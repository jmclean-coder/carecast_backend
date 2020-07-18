class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :full_name, :user_name
  has_many :user_ratings
  has_many :journal_entries
  has_many :list_items
end
