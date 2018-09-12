class User < ApplicationRecord
  has_secure_password
  has_many :user_clothes
  has_many :clothes, through: :user_clothes

  validates :username, presence: true
  validates :username, uniqueness: true
  validates :password, presence: true

  def outfits_name
    self.clothes.each do |clothe|
      clothe.outfits.map do |outfit|
        return outfit.name
      end
    end
  end
end
