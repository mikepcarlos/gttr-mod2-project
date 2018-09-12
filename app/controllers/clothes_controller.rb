class ClothesController < ApplicationController
  def index
    @clothes = Clothe.all
  end

  def show
    find_clothe
  end

  

  private
  def find_clothe
    @clothe = Clothe.find(params[:id])
  end
end
