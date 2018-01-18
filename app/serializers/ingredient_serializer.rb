class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :note, :user, :infos
  belongs_to :user

  def infos
    object.infos.pluck(:id)
  end
end
