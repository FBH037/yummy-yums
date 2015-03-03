class UserRecipesController < ApplicationController
  def index
  @user_recipes = @user.recipes
  @user = User.find(session[:user_id])
  end
  
end
