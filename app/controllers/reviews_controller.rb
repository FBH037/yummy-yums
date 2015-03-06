class ReviewsController < ApplicationController

  before_action :admin_user, only:  [:edit, :update, :destroy]
  before_action :member_user, except: [:show, :index]

  def index
    @reviews = Review.all
  end

  def new
    @recipe = Recipe.find(params[:recipe_id])
    @review = Review.new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
      @review = Review.new(review_params)
      @review.recipe_id = params[:recipe_id]
      @review.reviewer = current_user.full_name
    if @review.save
      redirect_to @review.recipe, notice: "Review has been created"
    else
      render :new
    end
  end

  def show
    @recipe = Recipe.find(params[:recipe_id])
    @review = @recipe.reviews.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:recipe_id])
    @review = @recipe.reviews.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:recipe_id])
    @review = @recipe.reviews.find(params[:id])
        if @review.update_attributes(review_params)
          redirect_to recipe_path(@recipe), notice: "Review has been updated"
        else
          redirect_to recipes_path
        end
      end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @review = @recipe.reviews.find(params[:id])
    @review.destroy
    redirect_to recipe_path(@recipe), notice: "Review has been deleted"
  end


  private

  def review_params
    params.require(:review).permit(:description, :recipe_id, :user_id)
  end

  # def admin_user
  #   @recipe = Recipe.find(params[:recipe_id])
  #   flash[:danger] = "Only an administrator can edit or delete reviews."
  #   redirect_to recipe_path(@recipe) unless current_user.admin?
  # end

end
