class User < ApplicationRecord
  has_secure_password
  has_many :user_clothes
  has_many :clothes, through: :user_clothes
  has_many :outfits

  validates :username, presence: true
  validates :username, uniqueness: true
  # validates :password, presence: true
  validates_presence_of :password, :if => :special?

  def possible_outfits
    Outfit.all.select do |outfit|
      outfit.clothes.reduce(true) {|curr, clothe| curr && self.clothes.include?(clothe)}
    end
  end

  private

  def make_sepcial
    @special = true
  end

  def special?
    @special
  end
end
