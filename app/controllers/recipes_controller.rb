class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render json: @recipes, serializer: ActiveModel::ArraySerializer
  end

  def show
    @recipe = Recipe.find(params[:id])
    render json: @recipe
  end

  def create
    @recipe = Recipe.create(params)
    render json: @recipe
  end
end
