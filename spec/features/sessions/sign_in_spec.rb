require "rails_helper"

RSpec.feature "User sign in" do
  before do
    create(:user, :individual, email: "john.doe@example.com", password: "password")
  end

  context "with valid credentials" do
    scenario "redirects to the home page" do
      visit root_path

      click_link "Login"

      fill_in "E-mail", with: "john.doe@example.com"
      fill_in "Senha", with: "password"

      click_button "Login"

      expect(current_path).to eq dashboard_path
      expect(page).to have_notice "Login efetuado com sucesso."
      expect(page).to have_content "john.doe@example.com"
    end
  end

  context "with invalid credentials" do
    scenario "displays error message" do
      visit root_path

      click_link "Login"

      fill_in "E-mail", with: "foo@bar.com"
      fill_in "Senha", with: "wrong"

      click_button "Login"

      expect(page).to have_alert "Email ou senha inválidos."
    end
  end