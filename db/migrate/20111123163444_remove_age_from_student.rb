class RemoveAgeFromStudent < ActiveRecord::Migration
  def up
    remove_column :students, :age
  end

  def down
    add_column :students, :age, :integer
  end
end
