class Student < ActiveRecord::Base
validates_presence_of :name, :last_name, :address, :email, :town, :zip, :home_phone, :date_of_birth, :parent_email
has_many :participants
end

