class Ingredient < ApplicationRecord
  belongs_to :user
  validates :user, :text, :note, presence: true
end
