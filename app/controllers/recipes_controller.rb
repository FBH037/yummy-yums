class RecipesController < ApplicationController

  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.all
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
  @recipe = Recipe.new(recipe_params)
  if @recipe.save
    redirect_to root_path
  else
    render :new
  end
  end


private
  def recipe_params
    params.require(:recipe).permit(:title, :description, :instruction )
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
