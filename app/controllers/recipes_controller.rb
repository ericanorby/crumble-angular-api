class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  def show
    @recipe = Recipe.find(params[:id])
    @recipe.cost_per_serving = @recipe.total_cost / @recipe.servings
    @ingredients = @recipe.ingredients.all
    total_calories = 0
    @ingredients.each do |ingredient|
      total_calories = total_calories + ingredient.calories
    end
    @recipe.cal_per_serving = total_calories / @recipe.servings
    render json: @recipe
  end

  def create
    @recipe = Recipe.create(recipe_params)
    render json: @recipe
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    render json: @recipe
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :source, :photo_url, :servings, :total_cost, :directions)
  end

end
