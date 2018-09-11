class Outfit < ApplicationRecord
  has_many :user_clothe_outfits
  has_many :user_clothes, through: :user_clothe_outfits
end
