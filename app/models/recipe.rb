class Recipe
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :steps, type: Array

  validates_presence_of :name
  validates_presence_of :steps
end
