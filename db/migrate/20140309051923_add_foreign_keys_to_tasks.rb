class AddForeignKeysToTasks < ActiveRecord::Migration
  def up
    remove_column :tasks, :id
  end

  def down
    add_column :tasks, :wallet_id, :integer
    add_column :tasks, :runner_id, :integer
  end
end
