class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :genre
      t.string :title
      t.string :artist
      t.string :year

      t.timestamps null: false
    end
  end
end
