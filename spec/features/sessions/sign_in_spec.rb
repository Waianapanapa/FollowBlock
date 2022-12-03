require "rails_helper"

RSpec.feature "User sign in" do
  before do
    create(:user, :individual, email: "john.doe@example.com", password: "password")
  end

  context "with valid credentials" do
    scenario "redirects to the home page" do
      visit root_path

      click_link "Login"

      fill_in "E-mai