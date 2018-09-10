class OutfitsController < ApplicationController
  def index
    @outfits = Outfit.all
  end

  def show
    find_outfit
  end

  private
  def outfit_params
    params.require(:outfit).permit(:name, :date)
  end

  def find_outfit
    @outfit = Outfit.find(params[:id])
  end
end
