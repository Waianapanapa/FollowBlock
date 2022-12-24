require "rails_helper"

RSpec.describe Bid, type: :model do
  describe "relationships" do
    it { is_expected.to belong_to(:user) }

    it { is_expected.to have_many(:messages) }
    it { is_expected.to have_many(:orders) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:area_type) }
    it { is_expected.to validate_presence_of(:city) }
    it { is_expected.to validate_presence_of(:number_of_days) }
    it { is_expected.to validate_