class OutfitsController < ApplicationController
  def index
		if current_user
			@outfits = Outfit.all
		else
      redirect_to login_path
    end
	end

  def new
    @shirts = Clothe.find_category("Shirt")
    @pants = Clothe.find_category("Pants")
    @footwears = Clothe.find_category("Footwear")
    if current_user
      @outfit = Outfit.new
    else
      redirect_to login_path
    end
  end

  def show
    @user = current_user
    find_outfit
  end

  def create
    if current_user
      @outfit = Outfit.new(name: params[:outfit][:name])
      @outfit.user = current_user
      # byebug
      ids_arr = params[:outfit][:clothe_ids]
      clothe_arr = ids_arr.select{|id| !id.empty?}
      clothe_arr.each {|id| @outfit.clothes << Clothe.find(id.to_i)}
      @outfit.save
      @outfit.clothes.each do |clothe|
        UserClothe.find_or_create_by(clothe_id: clothe.id, user_id: current_user.id)
      end
      if @outfit.valid?
        redirect_to current_user
      else
        render :new
      end
    else
      redirect_to login_path
    end
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
