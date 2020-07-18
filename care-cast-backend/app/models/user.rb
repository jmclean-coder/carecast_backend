class User < ApplicationRecord
    has_secure_password
    has_many :user_ratings
    has_many :categories, through: :user_ratings
    has_many :feelings
    has_many :journal_entries
    has_many :list_items
    validates :user_name, uniqueness: true
end
