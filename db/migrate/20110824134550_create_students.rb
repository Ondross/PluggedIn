class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :instrument
      t.string :address
      t.string :town
      t.string :zip
      t.string :home_phone
      t.string :cell
      t.string :dad_work
      t.string :mom_work
      t.string :dad_cell
      t.string :mom_cell
      t.string :date_of_birth
      t.integer :age
      t.string :mom_name
      t.string :dad_name
      t.string :parent_names
      t.string :email
      t.string :last_name
      t.text :notes
      t.text :conditions
      t.text :medications
      t.string :parent_email
      t.string :experience
      t.boolean :lessons
      t.text :favorite_bands
      t.string :music_style
      t.boolean :write_music
      t.boolean :switching_instruments
      t.text :additional_info
      t.boolean :parent_rep
      t.boolean :concert_volunteer
      t.boolean :joining_board
      t.boolean :donating_scholarship
      t.boolean :community_engage
      t.boolean :jamathon
      t.boolean :spring_fair

      t.timestamps
    end
  end
end
