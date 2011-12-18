class AddDateToParticipants < ActiveRecord::Migration
  def change
    add_column :participants, :season, :string
    add_column :participants, :year, :integer
  end
end
