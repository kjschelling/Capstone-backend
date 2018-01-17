class AddInfoToIngredients < ActiveRecord::Migration[5.1]
  def change
    add_reference :ingredients, :info, foreign_key: true
  end
end
