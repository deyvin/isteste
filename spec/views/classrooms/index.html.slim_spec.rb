require 'rails_helper'

RSpec.describe "classrooms/index", type: :view do
  before(:each) do
    assign(:classrooms, [
      Classroom.create!(
        :students_id => 1,
        :courses_id => 2
      ),
      Classroom.create!(
        :students_id => 1,
        :courses_id => 2
      )
    ])
  end

  it "renders a list of classrooms" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
