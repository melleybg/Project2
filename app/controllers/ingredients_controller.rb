class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def edit
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = @recipe.ingredients.find(params[:id])
  end

  def new
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = @recipe.ingredients.new
  end

def create
  @recipe = Recipe.find(params[:recipe_id])
  @recipe.ingredients.create!(ingredient_params)
  redirect_to recipe_path(@recipe)
end


def update
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(ingredient_params)
    redirect_to recipe_path(@recipe)
end

def destroy
  @recipe = Recipe.find(params[:recipe_id])
  @ingredient = Ingredient.find(params[:id])
  @ingredient.destroy
  redirect_to recipe_path(@recipe)
end

  private
def ingredient_params
  params.require(:ingredient).permit(:name, :img_url, :detail)
end
end
