class OutfitsController < ApplicationController
  def index
    @user = current_user
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
    @user = current_user
    find_outfit
  end

  def create
    @outfit = Outfit.new(name: params[:outfit][:name])
    @outfit.save
    ids_arr = params[:outfit][:clothe_ids].each {|id| @outfit.clothes}
    while ids_arr.map{|id| !id.empty?} == true
      @outfit.clothes << Clothe.find(id)
    end
    redirect_to user_path(current_user)
  end

  def update
    find_outfit
    @outfit.update(name: params[:outfit][:name])
    ids_arr = params[:outfit][:clothe_ids].each {|id| @outfit.clothes}
    while ids_arr.map{|id| !id.empty?} == true
      @outfit.clothes << Clothe.find(id)
    end
    redirect_to outfits_path
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
