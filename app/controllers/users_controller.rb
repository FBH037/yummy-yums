class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]


def index
  @users = User.all
end

  def new
    @user = User.new
  end

  def create
    if @current_user.role == "admin"
      @user = User.new(params.require[:user].permit[:first_name, :last_name, :email, :password,
                                   :password_confirmation, :role])
   else
    @user = User.new(user_params)
  end
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "You have successfully signed up."
    else
      render :new
    end
  end

def show
end

def edit
end

def update
  if @user.update_attributes(user_params)
    redirect_to user_path(@user), notice: "User has been updated."
  else
    redirect_to users_path
  end
end

  def destroy
    @user.destroy
    redirect_to users_path, notice: "User has been deleted."
  end


  private

  # Note that the code below is required to ensure proper admin access:

  def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password,
                                   :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end


end
