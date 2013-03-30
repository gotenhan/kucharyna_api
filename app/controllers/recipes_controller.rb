class RecipesController < ApplicationController
  def index
    render json: Recipe.all
  end

  def show
    id = @parameters[:id]
    @recipe = Recipe.find_by_id(:id)

    render json: Recipe
  end
end
