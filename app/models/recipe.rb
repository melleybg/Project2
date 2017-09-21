class Recipe < ApplicationRecord
  has_many :ingredients, dependent: :destroy
  validates :name, :img_url, :detail, presence: true
end
