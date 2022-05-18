class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase) 
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:notice] = "Good to go"
      redirect_to user
    else
      flash.now[:alert] = "Email + password combination not valid."
      render 'new' 
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "See you soon"
    redirect_to root_path
  end
end