# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110826163057) do

  create_table "others", :force => true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "job"
    t.string   "organization"
    t.string   "work_phone"
    t.string   "mobile_phone"
    t.string   "home_phone"
    t.string   "fax"
    t.string   "work_email"
    t.string   "home_email"
    t.string   "address1"
    t.string   "address2"
    t.string   "address3"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.string   "work_address1"
    t.string   "work_address2"
    t.string   "work_address3"
    t.string   "work_city"
    t.string   "work_state"
    t.string   "work_zip"
    t.string   "work_country"
    t.text     "notes"
    t.boolean  "fundraiser"
    t.boolean  "board_member"
    t.boolean  "community_contact"
    t.boolean  "competition"
    t.boolean  "consultant"
    t.boolean  "cross_cultural"
    t.boolean  "donor"
    t.boolean  "foundation"
    t.boolean  "grantwriter"
    t.boolean  "music_contact"
    t.boolean  "teacher"
    t.boolean  "raised_money_for"
    t.boolean  "performed_for"
    t.boolean  "partner"
    t.boolean  "professional"
    t.boolean  "plugged_in_teacher"
    t.boolean  "publicity"
    t.boolean  "speaker"
    t.boolean  "staff"
    t.boolean  "tech"
    t.boolean  "venue"
    t.boolean  "volunteer"
    t.boolean  "youth_arts_nonprofit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prospectives", :force => true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "email"
    t.string   "street1"
    t.string   "string2"
    t.string   "street3"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "home_phone"
    t.string   "mobile_phone"
    t.date     "dob"
    t.string   "instrument"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", :force => true do |t|
    t.string   "name"
    t.string   "instrument"
    t.string   "address"
    t.string   "town"
    t.string   "zip"
    t.string   "home_phone"
    t.string   "cell"
    t.string   "dad_work"
    t.string   "mom_work"
    t.string   "dad_cell"
    t.string   "mom_cell"
    t.string   "date_of_birth"
    t.integer  "age"
    t.string   "mom_name"
    t.string   "dad_name"
    t.string   "parent_names"
    t.string   "email"
    t.string   "last_name"
    t.text     "notes"
    t.text     "conditions"
    t.text     "medications"
    t.string   "parent_email"
    t.string   "experience"
    t.boolean  "lessons"
    t.text     "favorite_bands"
    t.string   "music_style"
    t.boolean  "write_music"
    t.boolean  "switching_instruments"
    t.text     "additional_info"
    t.boolean  "parent_rep"
    t.boolean  "concert_volunteer"
    t.boolean  "joining_board"
    t.boolean  "donating_scholarship"
    t.boolean  "community_engage"
    t.boolean  "jamathon"
    t.boolean  "spring_fair"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
