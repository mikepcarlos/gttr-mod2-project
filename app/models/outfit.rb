class Outfit < ApplicationRecord
  has_many :clothe_outfits
  has_many :clothes, through: :clothe_outfits
  belongs_to :user
  validates :clothes, presence: true
  # validates :name, presence: true
  # validates :name, length: {maximum: 15}
end
