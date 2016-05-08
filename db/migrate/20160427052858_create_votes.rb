class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :playlist_song_id
      t.integer :patron_id
      t.integer :vote

      t.timestamps null: false
    end
  end
end
