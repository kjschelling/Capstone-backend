class RemoveInfoFromIngredients < ActiveRecord::Migration[5.1]
  def change
    remove_reference :ingredients, :info, foreign_key: true
  end
end
