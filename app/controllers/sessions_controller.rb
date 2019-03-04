class SessionsController < ApplicationController

  def new
  end

  def create
    # byebug
    user = User.find_by(name: params[:user][:name])
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      @user = user
      redirect_to user_path(@user)
    else
      redirect_to new_session_path
    end
  end

end
