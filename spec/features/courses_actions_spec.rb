require 'rails_helper'
RSpec.feature "courses actions" do
    scenario "user add a course" do
        visit new_course_path

        fill_in "Nome", with: "Programador"
        fill_in "Descrição", with: "ruby, php, java"
        check "course[status]"

        click_on("Salvar")

        expect(page).to have_content("cadastrado com sucesso")
    end

    scenario "validation blank fields" do
        visit new_course_path
        click_on("Salvar")

        expect(page).to have_content("Nome não pode ficar em branco")
        expect(page).to have_content("Descrição não pode ficar em branco")

    end

    scenario "user change course" do
        course = create(:course)
        visit course_path(course)
        expect(page).to have_content("Programacao")
        expect(page).to have_content("Ativo")
    end
end
