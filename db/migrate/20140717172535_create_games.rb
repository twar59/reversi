class CreateGames < ActiveRecord::Migration
  def up
    create_table :games do |t|
      t.string :board
      t.timestamps
    end
  end
  def down
    drop_table :games
  end
end
