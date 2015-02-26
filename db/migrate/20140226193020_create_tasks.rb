class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.belongs_to :user
      t.datetime :task_date
      t.timestamps
      t.text :subject
      t.text :description
      t.text :deliverables
      t.datetime :duration
      t.decimal :price
      t.datetime :due_date
      t.integer :zipcode
      t.integer :rating_required, :default => 0
      t.integer :no_ratings_required, :default => 0
      t.integer :final_rating
      t.string :final_review
      t.string :status, :default => 'open'
      t.string :task_type, :default => 'bid'
    end
  end
end
