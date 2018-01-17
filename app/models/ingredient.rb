
class Ingredient < ApplicationRecord
  belongs_to :user
  has_many :infos, :dependent => :destroy
end
