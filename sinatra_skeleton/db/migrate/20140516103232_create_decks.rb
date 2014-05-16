class CreateDecks < ActiveRecord::Migration
  def change
  	create_table :decks do |t|
  		t.string :title
  		# t.string :subject
  		# t.integer :author #user_id
  		t.timestamps
  	end
  end
end
