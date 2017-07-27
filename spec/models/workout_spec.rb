require 'rails_helper'

RSpec.describe Workout, type: :model do
  it { should belong_to :user }
  it { should have_many :exercises }
  it { should validate_presence_of :date }
  it { should validate_presence_of :workout }
  it { should validate_presence_of :length }
end
