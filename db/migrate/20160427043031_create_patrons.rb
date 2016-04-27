class CreatePatrons < ActiveRecord::Migration
  def change
    create_table :patrons, :id => false do |t|
      t.integer :user_id
      t.integer :patron_points
      t.integer :num_of_requests
      t.integer :num_of_votes
      t.boolean :is_vip
      t.timestamps null: false
    end
  end
end
