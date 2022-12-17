
require "rails_helper"

RSpec.feature "User sign out" do
  let(:user) { create(:user, :individual, email: "john.doe@example.com") }

  scenario "redirects to the home page" do
    sign_in user

    click_link "Logout"

    expect(current_path).to eq root_path
    expect(page).to have_notice "Logout efetuado com sucesso."
    expect(page).to_not have_content "john.doe@example.com"
  end
end