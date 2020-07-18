class JournalEntrySerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content, :created_at, :updated_at
  has_many :users
end
