class IngredientsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @recipe = Recipe.find(params[:recipe_id])
    @ingredients = @recipe.ingredients.all
    render json: @ingredients
  end

  def show
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = @recipe.ingredients.find(params[:id])
    render json: @ingredient
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = @recipe.ingredients.create(ingredient_params)
    render json: @ingredient
  end

  def update
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = @recipe.ingredients.find(params[:id])
    @ingredient.update(ingredient_params)
    render json: @ingredient
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = @recipe.ingredients.find(params[:id])
    @ingredient.destroy
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :amount, :measurement, :calories)
  end

end
