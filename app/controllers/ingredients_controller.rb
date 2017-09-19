class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @ingredient = @recipe.ingredients.find(params[:id])
  end

  def new
    @recipe = Recipe.find(params[:id])
    @ingredient = @recipe.ingredient.new
  end

def create
  @recipe = Recipe.find(params[:id])
  @recipe.ingredients.create!(ingredient_params)
  redirect_to recipe_ingredients_path

end

def show
  @ingredient = Ingredient.all
end

def update
    @recipe = Recipe.find(params[:id])
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(ingredient_params)
    redirect_to recipe_ingredients_path
end

def destroy
  @ingredient = Ingredient.find(params[:id])
  @ingredient.destroy
  redirect_to recipe_ingredients_path
end

  private
def ingredient_params
  params.requiew(:ingredient).permit(:name, :img_url, :detail)
end
end
