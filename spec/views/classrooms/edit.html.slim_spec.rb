require 'rails_helper'

RSpec.describe "classrooms/edit", type: :view do
  before(:each) do
    @classroom = assign(:classroom, Classroom.create!(
      :students_id => 1,
      :courses_id => 1
    ))
  end

  it "renders the edit classroom form" do
    render

    assert_select "form[action=?][method=?]", classroom_path(@classroom), "post" do

      assert_select "input#classroom_students_id[name=?]", "classroom[students_id]"

      assert_select "input#classroom_courses_id[name=?]", "classroom[courses_id]"
    end
  end
end
