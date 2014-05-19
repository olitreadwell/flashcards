class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :title
      # t.string :subject
      t.integer :user_id # author
      t.timestamps
    end
  end
end
