class Outfit < ApplicationRecord
  has_many :clothes
  has_many :users, through: :clothes
end
