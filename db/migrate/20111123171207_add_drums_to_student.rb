class AddDrumsToStudent < ActiveRecord::Migration
  def change
    add_column :students, :primdrums, :boolean
    add_column :students, :secdrums, :boolean
  end
end
