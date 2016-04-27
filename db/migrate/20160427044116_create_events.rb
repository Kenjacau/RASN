class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :elite_id
      t.string :music_genre
      t.string :location
      t.boolean :is_official
      t.time :duration
      t.datetime :start_date

      t.timestamps null: false
    end
  end
end
