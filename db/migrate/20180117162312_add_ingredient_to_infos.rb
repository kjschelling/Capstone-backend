class AddIngredientToInfos < ActiveRecord::Migration[5.1]
  def change
    add_reference :infos, :ingredient, foreign_key: true
  end
end
