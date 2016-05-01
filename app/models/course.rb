class Course < ActiveRecord::Base
    has_enumeration_for :status, with: Status, create_helpers: true
    validates_presence_of :name, :description
    has_many :classrooms
end
