class OutfitsController < ApplicationController
  def index
		# if session[:current_user_id] != nil
		if current_user
			@outfits = current_user.outfits
		else
  		@outfits = Outfit.all
  		render :index
    end
	end

  def show
    find_outfit
    @outfit.clothes.each do |c|
      @user = c.user
    end
  end

  private
  def outfit_params
    params.require(:outfit).permit(:name, :date)
  end

  def find_outfit
    @outfit = Outfit.find(params[:id])
  end
end
