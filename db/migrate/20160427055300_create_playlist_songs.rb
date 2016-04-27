class CreatePlaylistSongs < ActiveRecord::Migration
  def change
    create_table :playlist_songs do |t|
      t.integer :event_id
      t.integer :song_id
      t.integer :priority
      t.boolean :marked
      t.boolean :played

      t.timestamps null: false
    end
  end
end
