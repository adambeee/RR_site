class AddStatusToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :message_status, :string, :default => 'unread'
  end
end
