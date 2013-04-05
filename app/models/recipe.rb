class Recipe
  include Mongoid::Document

  field :_id, type: String, default: -> { name.gsub(' ', '-') }
  field :name, type: String
  field :description, type: String
  field :steps, type: Array

  embeds_many :ingredients

  validates_presence_of :name
  validates_presence_of :steps
  validates_presence_of :ingredients
end
