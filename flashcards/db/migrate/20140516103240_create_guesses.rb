class CreateGuesses < ActiveRecord::Migration
  def change
  	create_table :guesses do |t|
  		t.integer :card_id
  		t.integer :round_id
  		t.boolean :correct
  		t.string :user_guess

  		t.timestamps
  	end
  end
end
