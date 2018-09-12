class Clothe < ApplicationRecord
  has_many :user_clothes
  has_many :clothe_outfits
  has_many :outfits, through: :clothe_outfits
  has_many :users, through: :user_clothes
end
