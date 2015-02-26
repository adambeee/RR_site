class AddPrimaryKeyToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :id, :primary_key
  end
end
