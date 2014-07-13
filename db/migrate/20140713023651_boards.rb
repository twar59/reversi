class Boards < ActiveRecord::Migration
  def up
    create_table :boards do |t|
      t.string :board
      t.timestamps
    end
  end
  def down
    drop_table :boards
  end
end
