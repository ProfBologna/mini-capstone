class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Successfully entered the void."
      redirect_to "/"
    else
      flash[:warning] = "Invalid email or password."
      redirect_to "/login"
    end  
  end

  def destroy
    session[:user_id] = nil
    flash[:warning] = "You have either died or gone insane."
    redirect_to "/login"
  end

end
