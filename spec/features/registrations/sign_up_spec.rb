
require "rails_helper"

RSpec.feature "User sign up" do
  context "with valid information" do
    context "when is a company" do
      scenario "redirects to the home page" do
        visit root_path

        click_link "Registre-se"

        select "Jurídica", from: "Tipo de pessoa"

        expect(page).to_not have_field "Nome"
        expect(page).to_not have_field "Sobrenome"
        expect(page).to_not have_field "CPF"

        fill_in "Razão Social", with: "Acme Inc."
        fill_in "CNPJ", with: "17.531.173/0001-39"
        fill_in "Telefone", with: "1122223333"
        fill_in "E-mail", with: "acme@example.com"
        fill_in "Senha", with: "password", match: :prefer_exact
        fill_in "Confirme sua senha", with: "password", match: :prefer_exact

        click_button "Registre-se"

        expect(current_path).to eq dashboard_path
        expect(page).to have_notice "Bem vindo! Você realizou seu registro com sucesso."
        expect(page).to have_content "acme@example.com"
      end
    end

    context "when is an individual" do
      scenario "redirects to the home page" do
        visit root_path

        click_link "Registre-se"

        select "Física", from: "Tipo de pessoa"

        expect(page).to_not have_field "Razão Social"
        expect(page).to_not have_field "CNPJ"

        fill_in "Nome", with: "John"
        fill_in "Sobrenome", with: "Doe"
        fill_in "CPF", with: "934.616.118-32"
        fill_in "Telefone", with: "1122223333"
        fill_in "E-mail", with: "john.doe@example.com"
        fill_in "Senha", with: "password", match: :prefer_exact
        fill_in "Confirme sua senha", with: "password", match: :prefer_exact

        click_button "Registre-se"

        expect(current_path).to eq dashboard_path
        expect(page).to have_notice "Bem vindo! Você realizou seu registro com sucesso."
        expect(page).to have_content "john.doe@example.com"
      end
    end
  end
end