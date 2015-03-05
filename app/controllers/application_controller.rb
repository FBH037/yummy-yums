class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # def current_role
  #   @current_role ||= User.find(session[:user_id]).role
  #   if @current_role.nil?
  #     @current_role = "visitor"
  #   end
  # end
  # helper_method :current_role

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
      @current_role = @current_user.role
    else
        @current_role = "visitor"
      end
    end
    helper_method :current_user

    # def admin_user
    #   flash[:danger] = "Only an administrator can edit or delete recipes."
    #   redirect_to recipe_path(@recipe) unless current_user.role == "admin"
    # end
    # helper_method :admin_user

    def admin_user
      if current_user.role != "admin"
        render :index, notice: "You don't have access!"
      end
    end
    helper_method :admin_user


    #   def authorize
    #     redirect_to root_path, notice: "Please Log In" if current_user.nil?
    #   end

  end
