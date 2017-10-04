class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def create
    @recipe = Recipe.create(recipe_params)
    # observe proper identation!!! >:D
    if @recipe.save
      flash[:notice] = 'Thank you for your new GUAC!!!'
      redirect_to recipe_path(@recipe)
    end
  end

  def new
    @recipe = Recipe.new
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    # add conditional handling for update; it will look exactly like what you
    # have in create
    @recipe.update(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :img_url, :detail)
  end
end
