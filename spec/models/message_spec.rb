require "rails_helper"

RSpec.describe Message, type: :model do
  describe "relationships" do
    it { is_expected.to belong_