class AddFinalRatingsToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :final_rating, :integer
    add_column :tasks, :final_review, :string

  end
end
