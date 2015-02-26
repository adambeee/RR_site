class AddViewsToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :views, :integer
  end
end
