require 'rails_helper'
RSpec.feature "classrooms actions" do

    #let!(:course) { FactoryGirl.create(:course)}
    #let!(:student) { FactoryGirl.create(:student)}

    background do
        @student    = FactoryGirl.create(:student)
        @course     = FactoryGirl.create(:course)
    end



    scenario "user add a classrooms" do

        visit new_classroom_path

        expect(find('#classroom_students_id')).to have_content(@student.name)
        expect(find('#classroom_courses_id')).to have_content(@course.name)

        select @student.name, from: 'classroom[students_id]'
        select @course.name, from: 'classroom[courses_id]'
        click_on("Salvar")

        expect(page).to have_content("cadastrado com sucesso")
    end

    scenario "user add a classrooms with entry_at 01/02/2016 10:30" do

        visit new_classroom_path

        select @student.name, from: "classroom[students_id]"
        select @course.name, from: "classroom[courses_id]"

        select 1, from: 'classroom[entry_at(3i)]'
        select 'Fevereiro', from: 'classroom[entry_at(2i)]'
        select 2016, from: 'classroom[entry_at(1i)]'
        select 10, from: 'classroom[entry_at(4i)]'
        select 30, from: 'classroom[entry_at(5i)]'

        click_on("Salvar")

        expect(page).to have_content("01/02/2016 10:30")
    end




end
