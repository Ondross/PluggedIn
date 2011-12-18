class Student < ActiveRecord::Base
validates_presence_of :name, :last_name, :address, :email
has_many :participants
end

