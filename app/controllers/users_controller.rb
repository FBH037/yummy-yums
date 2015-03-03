class UsersController < ApplicationController

<<<<<<< HEAD


=======
  def new
    @user = User.new
  end
>>>>>>> 05ba87a2d07c35274ee3476211dd5f614b1be73d

  def create
    @user = User.new(params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name))
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "You have successfully signed up."
    else
      render :new
    end
  end

end
