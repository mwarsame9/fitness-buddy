require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many :workouts }
  it { should have_many :exercises }
  it { should validate_presence_of :encrypted_password }
  it { should validate_presence_of :email }
end
