require "rails_helper"

RSpec.describe User do
  describe "relationships" do
    it { is_expected.to have_many(:bids).dependent(:destroy) }
    it { is_expected.to have_many(:orders).dependent(:destroy) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password) }
    it { is_expected.to validate_presence_of(:personable_type) }
    it { is_expected.to validate_presence_of(:phone) }
    it { is_expected.to validate_presence_of(:r