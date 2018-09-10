class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      redirect_to outfits_path
    else
      render :new
    end
  end

  def show
    find_user
  end

  def edit
    find_user
  end

  def update
    find_user
    @user.update(user_params)
    redirect_to user_path
  end

  def destroy
    find_user
    @user.destroy
    redirect_to gttr_path
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :bio, :display_name)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
