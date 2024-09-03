class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      # Good scenario
      session[:user_id] = user.id # Keeps the user logged in by storing their info in the session
      flash[:success] = "You have successfully logged in"
      redirect_to root_path
    else
      # Bad scenario
      flash.now[:error] = "There was something wrong with your login information"
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You have successfully logged out"
    redirect_to login_path
  end

  def index
  end

  def edit
  end

  def update
  end


end
