class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :name, null: false
      t.string :music_genre
      t.string :location
      t.boolean :is_official, default: false
      t.integer :duration
      t.datetime :start_date

      t.timestamps null: false
    end
  end
end
