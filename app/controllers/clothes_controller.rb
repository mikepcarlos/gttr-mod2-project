class ClothesController < ApplicationController

  def index
    @user = current_user
    @clothes = Clothe.all
  end

  def show
    @user = current_user
    find_clothe
  end

  private
  def clothe_params
    params.require(:clothe).permit(:name, :category, :color)
  end

  def find_clothe
    @clothe = Clothe.find(params[:id])
  end

end
