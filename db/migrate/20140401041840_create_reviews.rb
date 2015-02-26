class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.belongs_to :user
      t.belongs_to :task
      t.text :body
      t.integer :score
      t.timestamps
    end
  end
end
