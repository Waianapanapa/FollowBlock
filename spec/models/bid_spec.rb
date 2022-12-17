require "rails_helper"

RSpec.describe Bid, type: :model do
  describe "relationships" do
    it { is_expected.to belong_to(:user) }

    it { is_expected.to have_many(:messages) }
    it 