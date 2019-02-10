class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    if @user.valid?
      redirect_to login_path
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
    # byebug
    @user.update(user_params)
    redirect_to @user
  end

  def destroy
    find_user
    @user.destroy
    @user.outfits.each do |outfit|
      outfit.destroy
    end
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
