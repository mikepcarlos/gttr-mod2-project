class Clothe < ApplicationRecord
  has_many :user_clothes
  has_many :clothe_outfits
  has_many :outfits, through: :clothe_outfits
  has_many :users, through: :user_clothes

  def self.find_category(category)
    self.all.select do |clothe|
      clothe.category == category
    end
  end

end
