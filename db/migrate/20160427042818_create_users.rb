class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :location
      t.string :email, null: false, default: ""
      t.string :gender
      t.string :favorite_genre
      t.integer :event_id
      t.date :birthday
      t.string :type
      #patron
      t.integer :patron_points, default: 0
      t.integer :num_of_requests, default: 1
      t.integer :num_of_votes, default: 3
      t.boolean :is_vip, default: false
      #elite
      t.integer :num_of_events, default: 2
      t.boolean :is_authorized, default: false

      t.timestamps null: false
    end
  end

end
