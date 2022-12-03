require "rails_helper"

RSpec.feature "User sign in" do
  before do
    create(:user, :individual, email: "john.doe@example.com", password: "password")
  end

  context "with val