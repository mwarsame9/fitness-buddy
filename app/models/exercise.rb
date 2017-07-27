class Exercise < ApplicationRecord
  validates :name, :sets, :reps, :lbs, presence: true

  belongs_to :user
  belongs_to :workout
end
