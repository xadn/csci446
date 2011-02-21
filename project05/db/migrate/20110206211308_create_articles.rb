class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string :title, :null => false
      t.integer :author_id, :null => false
      t.text :body, :null => false
      t.integer :number_of_edits, :default => 0
      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end