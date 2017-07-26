class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, :presence => true, :uniqueness => true
  validates :encrypted_password, :presence => true
  has_many :workouts
  has_many :exercises
end
