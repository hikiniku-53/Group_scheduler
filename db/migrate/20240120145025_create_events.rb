class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.bigint :group_id, null: false
      t.bigint :event_genre_id, null: false
      t.bigint :place_id, null: false
      t.date :date
      t.time :start_time, null: false
      t.time :end_time, null: false
      t.string :note

      t.timestamps
    end
  end
end
