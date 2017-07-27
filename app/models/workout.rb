class Workout < ApplicationRecord
  validates :date, :workout, :length, presence: true

  belongs_to :user
  has_many :exercises, dependent: :destroy
end
