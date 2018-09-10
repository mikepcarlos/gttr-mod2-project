class User < ApplicationRecord
  has_secure_password
  has_many :clothes
  has_many :outfits, through: :clothes
end
