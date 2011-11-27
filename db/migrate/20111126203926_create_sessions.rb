class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.integer :year
      t.string :season
      t.string :student

      t.timestamps
    end
  end
end
