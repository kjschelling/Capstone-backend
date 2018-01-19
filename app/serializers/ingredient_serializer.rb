class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :note, :user, :infos, :editable
  belongs_to :user

  def editable
    scope == object.user
  end

  def infos
    object.infos.pluck(:id)
  end

end
