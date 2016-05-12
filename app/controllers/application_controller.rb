class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def current_user
    sessions[:user_id]
  end

  def user_login?
    redirect_to new_user_path unless current_user
  end

end
