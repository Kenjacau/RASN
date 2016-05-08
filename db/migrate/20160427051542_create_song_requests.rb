class CreateSongRequests < ActiveRecord::Migration
  def change
    create_table :song_requests do |t|
      t.integer :song_id
      t.integer :user_id
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
