class AddTaskPriceToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :proposed_price, :integer
  end
end
