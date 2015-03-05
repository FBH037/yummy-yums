class RecipesController < ApplicationController

  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  before_filter :admin_user, only:  [:edit, :destroy]
  before_filter :member_user, except: [:index, :show ]

  def index
    @recipes = Recipe.all
  end

  def show
  # recipe_id[:recipe_id] = @recipe.id
  @user_recipe = UserRecipe.new
  @recipe = Recipe.find(params[:id])
  @reviews = @recipe.reviews
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

def edit
end

def update
  if @recipe.update_attributes(recipe_params)
    redirect_to recipe_path(@recipe), notice: "Recipe has been updated."
  else
    redirect_to recipes_path
  end
end


def destroy
  @recipe.destroy
  redirect_to recipes_path, notice: "Recipe deleted."
end


private
  def recipe_params
    params.require(:recipe).permit(:title, :description, :instruction )
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end


end
