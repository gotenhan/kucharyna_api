class Recipe
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :steps, type: Array
end
