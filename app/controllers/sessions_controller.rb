class SessionsController < ApplicationController

  #Logged in
 
  def new
    render :new
  end

  def create
    @user = User.find_by(username: params["username"])
    if @user && @user.authenticate(params["password"])
      session[:current_user_id] = @user.id
      redirect_to outfits_path
    else
      redirect_to "/login"
    end
  end

  def destroy
    session.delete :current_user_id
    redirect_to "/login"
  end

end
