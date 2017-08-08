class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates_presence_of :description, :cocktail_id, :ingredient_id
  validates :cocktail_id, uniqueness: { scope: :ingredient_id,
    message: "you couldn't put twice the same ingredient" }
end
