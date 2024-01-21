class CreateEventGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :event_genres do |t|
      t.bigint :group_id, null: false
      t.integer :event_genre_name 

      t.timestamps
    end

  end
end
