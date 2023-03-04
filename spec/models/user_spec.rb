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
    it { is_expected.to validate_presence_of(:role) }

    it { is_expected.to validate_confirmation_of(:password) }

    context "when is a company" do
      subject { described_class.new(personable_type: :company) }

      it { is_expected.to validate_presence_of(:corporate_name) }
    end

    context "when is an individual" do
      subject { described_class.new(personable_type: :individual) }

      it { is_expected.to validate_presence_of(:first_name) }
      it { is_expected.to validate_presence_of(:last_name) }
    end
  end
end
