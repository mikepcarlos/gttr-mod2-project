class Clothe < ApplicationRecord
  has_many :user_clothes
  has_many :users, through: :user_clothes
end
