require 'rails_helper'

RSpec.describe "classrooms/show", type: :view do
  before(:each) do
    @classroom = assign(:classroom, Classroom.create!(
      :students_id => 1,
      :courses_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
