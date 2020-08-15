class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :detailed
end
