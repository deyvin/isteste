require 'rails_helper'
RSpec.feature "students actions" do
    scenario "user add a student" do
        visit new_student_path

        fill_in "Nome", with: "Deyvid Nascimento"
        fill_in "Número Registro", with: "2016123459"
        check "student[status]"

        click_on("Salvar")

        expect(page).to have_content("cadastrado com sucesso")
    end

    scenario "invalid register_number length" do
        visit new_student_path

        fill_in "Nome", with: "Deyvid Nascimento"
        fill_in "Número Registro", with: "2016"
        check "student[status]"

        click_on("Salvar")

        expect(page).to have_content("curto")
    end

    scenario "user change student" do
        student = create(:student)
        visit student_path(student)
        expect(page).to have_content("Deyvid Nascimento")
    end
end
