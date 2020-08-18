class UsersController < ApplicationController
  before_action :admin_user, except:  [:show, :index]
  before_action :set_user, only: [:show, :edit, :update, :destroy]


def index
  @users = User.all
end


  def new
    @user = User.new
  end

  def create
    if @current_role == "admin"
      @user = User.new(params.require(:user).permit(:first_name, :last_name, :email, :password,
                                   :password_confirmation, :role))
   else
    @user = User.new(user_params)
  end
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "You have successfully signed up"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

<<<<<<< HEAD
def update
  if @user.update_attributes(params.require(:user).permit(:first_name, :last_name, :email, :password,
                                 :password_confirmation, :role))
    redirect_to user_path(@user), notice: "User has been updated"
  else
    redirect_to users_path
=======
  def update
    if @user.update_attributes(params.require(:user).permit(:first_name, :last_name, :email, :role))
      redirect_to user_path(@user), notice: "User has been updated"
    else
      render :edit
    end
>>>>>>> be1636e7dd0eb5baaab97f4db817b6d25b7e5904
  end

  def destroy
    @user.destroy
    redirect_to users_path, notice: "User has been deleted"
  end


  private


  def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :role)
  end

  def set_user
    @user = User.find(params[:id])
  end


end
