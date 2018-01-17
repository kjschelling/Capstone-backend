class InfoSerializer < ActiveModel::Serializer
  attributes :id, :additional_info, :ingredient_id
  belongs_to :ingredient
end

# def ingredient
#   object.ingredient.pluck(:id)
# end
