class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
    	t.references :chat_room, index: true
    	t.text 				:body
    	t.references :user, index: true
    	
      t.timestamps null: false
    end
  end
end
