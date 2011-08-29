class CreateOthers < ActiveRecord::Migration
  def change
    create_table :others do |t|
      t.string :first
      t.string :last
      t.string :job
      t.string :organization
      t.string :work_phone
      t.string :mobile_phone
      t.string :home_phone
      t.string :fax
      t.string :work_email
      t.string :home_email
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :work_address1
      t.string :work_address2
      t.string :work_address3
      t.string :work_city
      t.string :work_state
      t.string :work_zip
      t.string :work_country
      t.text :notes
      t.boolean :fundraiser
      t.boolean :board_member
      t.boolean :community_contact
      t.boolean :competition
      t.boolean :consultant
      t.boolean :cross_cultural
      t.boolean :donor
      t.boolean :foundation
      t.boolean :grantwriter
      t.boolean :music_contact
      t.boolean :teacher
      t.boolean :raised_money_for
      t.boolean :performed_for
      t.boolean :partner
      t.boolean :professional
      t.boolean :plugged_in_teacher
      t.boolean :publicity
      t.boolean :speaker
      t.boolean :staff
      t.boolean :tech
      t.boolean :venue
      t.boolean :volunteer
      t.boolean :youth_arts_nonprofit

      t.timestamps
    end
  end
end
