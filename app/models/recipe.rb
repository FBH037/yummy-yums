class Recipe < ActiveRecord::Base

  have_many :user_recipes
  have_many :users, through: :user_recipes

end
