

class Ingredient < ApplicationRecord
  belongs_to :user
  validates :user, :name, :note, presence: true
end
