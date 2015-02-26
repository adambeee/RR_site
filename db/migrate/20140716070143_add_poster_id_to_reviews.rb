class AddPosterIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :poster_id, :integer
  end
end
