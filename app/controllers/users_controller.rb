class UsersController < ApplicationController
  before_action :admin_user, except:  [:show, :index]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      if @user.role.nil?
        @user.role = "member"
      end
      session[:user_id] = @user.id
      redirect_to root_path, notice: "You have successfully signed up."
    else
      render :new
    end
  end

def show
  @user = User.find(params[:id])
end

  private

  # Note that the code below is required to ensure proper admin access:

  def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password,
                                   :password_confirmation)
  end



end
