class JournalEntrySerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content, :created_at, :updated_at, :id, :user_id
  
end
