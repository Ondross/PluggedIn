class Student < ActiveRecord::Base
validates_presence_of :name, :last_name, :address, :email
end
