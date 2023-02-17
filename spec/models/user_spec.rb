require "rails_helper"

RSpec.describe User do
  describe "relationships" do
    it { is_expected.to have_many(:bids).dependent(:destroy) }
    it { is_expected.to have_many(:orders).dependent(:destroy) }
  end

  describe "validations" do
    it { is_expecte