class CreateGuesses < ActiveRecord::Migration
  def change
  	create_table :guesses do |t|
  		t.integer :round_id, null: false
  		t.integer :card_id, null: false
  		t.boolean :correct, default: false
  		t.boolean :first_guess, default: true

  		t.timestamps(null: false)
  	end
  end
end
