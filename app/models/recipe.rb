class Recipe < ActiveRecord::Base

  validates :title, presence: true
  validates :description, presence: true
  validates :instruction, presence: true

  has_many :reviews
  has_many :user_recipes
  has_many :users, through: :user_recipes



end
