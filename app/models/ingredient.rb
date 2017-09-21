class Ingredient < ApplicationRecord
  belongs_to :recipe, optional: true
  validates :detail, presence: true
end
