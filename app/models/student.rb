class Student < ActiveRecord::Base
    extend Enumerize
    enumerize :status, in: [:active, :inative]
end
