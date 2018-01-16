class IngredientSerializer < ActiveModel::Serializer
  attributes :name, :id, :user, :note
end
