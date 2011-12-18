class RemoveSessionFromParticipants < ActiveRecord::Migration
  def up
    remove_column :participants, :session
  end

  def down
    add_column :participants, :session, :string
  end
end
