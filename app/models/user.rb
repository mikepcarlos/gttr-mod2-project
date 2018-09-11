class User < ApplicationRecord
  has_secure_password
  has_many :user_clothes
  has_many :clothes, through: :user_clothes
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :password, presence: true
end
