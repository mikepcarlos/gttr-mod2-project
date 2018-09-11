class OutfitsController < ApplicationController
  def index
		if current_user
			@outfits = Outfit.all
		else
      redirect_to login_path
    end
	end

  def new
    @outfit = Outfit.new
  end

  def show
    find_outfit
    # @outfit.clothes.each do |c|
    #   @user = c.user
    # end
  end

  def create
    @outfit = Outfit.new(outfit_params)
    @outfit.save
    redirect_to outfits_path
  end

  def update
    find_outfit
    @outfit.update(outfit_params)
    redirect_to outfit_path
  end

  def edit
    find_outfit
  end

  def destroy
    find_outfit
    @outfit.destroy
    redirect_to current_user
  end

  private
  def outfit_params
    params.require(:outfit).permit(:name, :date)
  end

  def find_outfit
    @outfit = Outfit.find(params[:id])
  end
end
