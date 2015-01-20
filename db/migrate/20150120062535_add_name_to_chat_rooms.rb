class AddNameToChatRooms < ActiveRecord::Migration
  def change
  	add_column :chat_rooms, :name, :string
  end
end
