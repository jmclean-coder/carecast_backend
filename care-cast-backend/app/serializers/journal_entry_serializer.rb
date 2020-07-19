class JournalEntrySerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content, :created_at, :updated_at
  belongs_to :user 
end
