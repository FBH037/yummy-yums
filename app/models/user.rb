class User < ActiveRecord::Base
  has_many :user_recipes
  has_many :reviews
  has_many :recipes, through: :user_recipes
end