class UserRecipesController < ApplicationController

  def index
    @user_recipes = UserRecipe.all
  end

end
