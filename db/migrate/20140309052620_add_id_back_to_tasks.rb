class AddIdBackToTasks < ActiveRecord::Migration
  def change
    def change
      add_column :tasks, :id, :integer
      remove_column :tasks, :user_id, :integer
      add_column :
    end
  end
end
