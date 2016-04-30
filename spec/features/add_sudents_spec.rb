require 'rails_helper'
RSpec.feature "add students" do
    scenario "user add a student" do
        visit new_student_path

        fill_in "Nome", with: "Deyvid Nascimento"
        fill_in "Número Registro", with: "201612345"
        select "Active", from: "Status"

        click_on("Salvar")

        expect(page).to have_content("cadastrado com sucesso")
    end

end
