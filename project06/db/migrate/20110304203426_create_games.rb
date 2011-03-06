class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.integer :user_id, :null => false
      t.string :title, :null => false
      t.integer :rating, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :games
  end
end
