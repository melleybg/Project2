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
  redirect_to recipe_ingredients_path

end

def show
  @ingredient = Ingredient.find(params[:recipe_id])
end

def update
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(ingredient_params)
    redirect_to recipe_ingredient_path
end

def destroy
  @ingredient = Ingredient.find(params[:recipe_id])
  @ingredient.destroy
  redirect_to recipe_ingredient_path
end

  private
def ingredient_params
  params.require(:ingredient).permit(:name, :img_url, :detail)
end
end
