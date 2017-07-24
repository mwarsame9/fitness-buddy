class Measurement < ApplicationRecord
  belongs_to :user

  validates :chest, :arms, :waist, :hips, :thighs, :calves, :body_fat, :presence => true
end
