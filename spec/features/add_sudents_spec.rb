require 'rails_helper'
RSpec.feature "add students" do
    scenario "user add a student" do
        visit new_student_path

        fill_in "Nome", with: "Deyvid Nascimento"
        fill_in "Número Registro", with: "201612345"
        fill_in "Status", with: "active"

        click_on("Salvar")

        expect(page).to have_content("cadastro realizado com sucesso")
    end
end
