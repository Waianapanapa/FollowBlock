
module Feature
  module Helpers
    def sign_in(user)
      visit new_user_session_path

      fill_in "E-mail", with: user.email
      fill_in "Senha", with: user.password || "password"

      click_button "Login"
    end

    def sign_out
      click_button "Sign out"
    end
  end
end

RSpec.configure do |config|
  config.include Feature::Helpers, type: :feature
end