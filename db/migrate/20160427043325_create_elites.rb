class CreateElites < ActiveRecord::Migration
  def change
    create_table :elites, :id => false do |t|
      t.integer :user_id
      t.integer :num_of_events
      t.boolean :is_authorized

      t.timestamps null: false
    end
  end
end
