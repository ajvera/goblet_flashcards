class CreateRound < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :deck_id, { null: false }

      t.timestamps(null: false)
    end
  end
end
