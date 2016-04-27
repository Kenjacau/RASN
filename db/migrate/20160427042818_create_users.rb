class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :location
      t.string :email
      t.string :gender
      t.string :favorite_genre
      t.integer :event_id
      t.date :birthday
      t.string :password_digest

      t.timestamps null: false
    end
    add_index :users, :email, unique: true
  end

end
