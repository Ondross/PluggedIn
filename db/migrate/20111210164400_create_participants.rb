class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :first
      t.string :last
      t.string :session

      t.timestamps
    end
  end
end
