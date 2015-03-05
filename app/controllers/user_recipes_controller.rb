class UserRecipesController < ApplicationController

before_action :set_user_recipe, only: [ :show, :update, :destroy, :edit]

  def index
  @user = User.find(session[:user_id])
  @user_recipes = @user.user_recipes.order(:user_like).reverse
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

  def like
    @user_recipe = UserRecipe.find(params[:id])
    @user_recipe.user_like = true
    @user_recipe.save
    redirect_to root_path
  end

private
  def user_recipe_params
    params.require(:user_recipe).permit(:user_id, :recipe_id, :user_like)
  end

  def set_user_recipe
    @user_recipe = UserRecipe.find(params[:id])
  end

end
