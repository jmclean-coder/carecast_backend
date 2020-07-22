class ListItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :created_at, :updated_at
end
