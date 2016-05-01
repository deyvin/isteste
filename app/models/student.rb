class Student < ActiveRecord::Base
    has_enumeration_for :status, with: Status, create_helpers: true
    validates_presence_of :name, :register_number, :status
    validates :register_number, length: { minimum: 10 }
    has_many :classrooms
end
