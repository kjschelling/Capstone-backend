# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  # has_many :examples
  has_many :ingredients
  has_many :infos, through: :ingredients
end
