class Outfit < ApplicationRecord
  has_many :clothe_outfits
  has_many :clothes, through: :clothe_outfits
  # 
  # def get_clothe
  #   self.
  # end
end
