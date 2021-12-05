class User < ApplicationRecord
  has_secure_password
  has_one_attached :avatar

  validates :email, presence: true, uniqueness: true, on: :create
  validates :password, length: { minimum: 8 }, on: :create
end
