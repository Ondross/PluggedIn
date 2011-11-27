class Prospective < ActiveRecord::Base
validates_presence_of :first, :last, :email, :street1, :city, :state, :zip, :home_phone, :dob, :instrument
end
