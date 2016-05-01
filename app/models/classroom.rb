class Classroom < ActiveRecord::Base
    belongs_to :student, foreign_key: "students_id"
    belongs_to :course, foreign_key: "courses_id"
end
