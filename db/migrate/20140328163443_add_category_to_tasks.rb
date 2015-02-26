class AddCategoryToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :task_category, :string
  end
end
