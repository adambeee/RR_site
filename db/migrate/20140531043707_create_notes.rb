class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.timestamps
      t.belongs_to :task
      t.text :body
      t.string :status, :default => 'unread'
      t.integer :sender_id
      t.integer :recipient_id
    end
  end
end
