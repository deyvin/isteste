class Student < ActiveRecord::Base
    has_enumeration_for :status, with: Status, create_helpers: true
end
