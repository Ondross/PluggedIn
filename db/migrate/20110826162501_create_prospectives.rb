class CreateProspectives < ActiveRecord::Migration
  def change
    create_table :prospectives do |t|
      t.string :first
      t.string :last
      t.string :email
      t.string :street1
      t.string :string2
      t.string :street3
      t.string :city
      t.string :state
      t.string :zip
      t.string :home_phone
      t.string :mobile_phone
      t.date :dob
      t.string :instrument

      t.timestamps
    end
  end
end
