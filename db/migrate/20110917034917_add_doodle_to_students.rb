class AddDoodleToStudents < ActiveRecord::Migration
  def change
    add_column :students, :mon0, :boolean
    add_column :students, :mon1, :boolean
    add_column :students, :mon2, :boolean
    add_column :students, :mon3, :boolean
    add_column :students, :tue0, :boolean
    add_column :students, :tue1, :boolean
    add_column :students, :tue2, :boolean
    add_column :students, :tue3, :boolean
    add_column :students, :wed0, :boolean
    add_column :students, :wed1, :boolean
    add_column :students, :wed2, :boolean
    add_column :students, :wed3, :boolean
    add_column :students, :thur0, :boolean
    add_column :students, :thur1, :boolean
    add_column :students, :thur2, :boolean
    add_column :students, :thur3, :boolean
    add_column :students, :fri0, :boolean
    add_column :students, :fri1, :boolean
    add_column :students, :fri2, :boolean
    add_column :students, :fri3, :boolean
    add_column :students, :sat0, :boolean
    add_column :students, :sat1, :boolean
    add_column :students, :sat2, :boolean
    add_column :students, :sat3, :boolean
    add_column :students, :sat4, :boolean
    add_column :students, :sat5, :boolean
    add_column :students, :sun0, :boolean
    add_column :students, :sun1, :boolean
    add_column :students, :sun2, :boolean
    add_column :students, :sun3, :boolean
    add_column :students, :sun4, :boolean
    add_column :students, :sun5, :boolean
  end
end
