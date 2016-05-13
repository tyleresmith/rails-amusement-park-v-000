class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(id: session_params[:id])
    if @user
      session[:user_id] = @user.id
      redirect_to @user
    else
      redirect_to new_session_path
    end
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    redirect_to root_path
  end

  private

  def session_params
    params.require(:user).permit(:id)
  end
end
