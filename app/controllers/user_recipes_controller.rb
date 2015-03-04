class UserRecipesController < ApplicationController

  def index
  @user = User.find(session[:user_id])
  @user_recipes = @user.recipes
  end

  def new
  @user_recipe = UserRecipe.new
  end

  def create
    @user_recipe = UserRecipe.new(user_recipe_params)
    @user_recipe.user_like = false
    # @user_recipe.recipe_id = recipe_id[:recipe_id]
    if @user_recipe.user_id.nil?
      @user_recipe.user_id = session[:user_id]
    end
    if @user_recipe.save
      redirect_to root_path
    else
      render :new
    end
  end

private

  def user_recipe_params
    params.require(:user_recipe).permit(:user_id, :recipe_id, :user_like)
  end
end
