class Ingredient
  include Mongoid::Document

  field :name, type: String
  field :amount, type: Numeric
  field :unit, type: String

  embedded_in :recipe

  validates_presence_of :name
  validates_presence_of :amount 
  validates_numericality_of :amount, greater_than_or_equal_to: 0
end
