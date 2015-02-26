class AddTaskPriceWalletToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :wallet_price, :integer
  end
end
