class AddMessageTypeToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :message_type, :string, :default => 'message'
  end
end
