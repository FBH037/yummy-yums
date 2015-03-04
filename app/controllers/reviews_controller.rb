class ReviewsController < ApplicationController

  before_action :admin_user, only:  [:edit, :destroy]

  def index
    @reviews = Review.all
  end

  def new
    @recipe = Recipe.find(params[:recipe_id])
    @review = Review.new
  end

  def create
      @review = Review.new(review_params)
      @review.recipe_id = params[:recipe_id]
    if @review.save
      redirect_to [@review.recipe]
    else
      render :new
    end
  end

  def show
    @recipe = Recipe.find(params[:recipe_id])
    @review = @recipe.reviews.find(params[:id])
  end

  def edit
  end

  def destroy
  end


  private

  def review_params
    params.require(:review).permit(:description, :recipe_id)
  end

  # def admin_user
  #   redirect_to ------> recipes_path/recipe_reviews_path(recipe) <------- unless current_user.admin?
  #   end
  #
end
