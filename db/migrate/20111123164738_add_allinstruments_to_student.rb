class AddAllinstrumentsToStudent < ActiveRecord::Migration
  def change
    add_column :students, :primguitar, :boolean
    add_column :students, :primbass, :boolean
    add_column :students, :primkeyboard, :boolean
    add_column :students, :primvocal, :boolean
    add_column :students, :primother, :string
    add_column :students, :secguitar, :boolean
    add_column :students, :secbass, :boolean
    add_column :students, :seckeyboard, :boolean
    add_column :students, :secvocal, :boolean
    add_column :students, :secother, :string
  end
end
