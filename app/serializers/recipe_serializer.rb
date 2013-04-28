class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :steps
  has_many :ingredients
end
