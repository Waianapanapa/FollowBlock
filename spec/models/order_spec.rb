require "rails_helper"

RSpec.describe Order, type: :model do
  describe "relationships" do
    it { is_expected.to belong_to(: