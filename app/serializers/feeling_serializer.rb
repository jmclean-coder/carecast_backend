class FeelingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :main_word, :need_condition
end
