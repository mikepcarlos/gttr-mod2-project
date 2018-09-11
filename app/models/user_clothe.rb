class UserClothe < ApplicationRecord
  has_many :user_clothe_outfits
  has_many :outfits, through: :user_clothe_outfits
  belongs_to :user
  belongs_to :clothe
end
