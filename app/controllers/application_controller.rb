class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def current_user
    @user||= User.find_by(id: session[:user_id])
  end

  def user_login?
    redirect_to new_user_path unless current_user
  end

  def logged_in?
    !current_user.nil?
  end

  def require_admin
    current_user.admin
  end

end
