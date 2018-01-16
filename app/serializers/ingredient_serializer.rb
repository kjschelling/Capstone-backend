class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :note, :user
end
