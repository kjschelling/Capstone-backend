class InfoSerializer < ActiveModel::Serializer
  attributes :id, :additional_info, :ingredient
  # belongs_to :ingredient
  def ingredient
    object.ingredient.id
  end
end

# def ingredient
#   object.ingredient.pluck(:id)
# end
