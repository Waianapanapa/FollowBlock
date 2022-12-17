require "rails_helper"

RSpec.describe Bid, type: :model do
  describe "relationships" do
    it { is_expected.to belong_to(