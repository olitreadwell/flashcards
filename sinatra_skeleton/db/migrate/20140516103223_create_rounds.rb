class CreateRounds < ActiveRecord::Migration
  def change
  	create_table :rounds do |t|
  		t.integer :deck_id
  		t.integer :user_id #player

  		t.timestamps
  	end
  end
end
