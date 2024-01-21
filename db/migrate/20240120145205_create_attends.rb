class CreateAttends < ActiveRecord::Migration[6.1]
  def change
    create_table :attends do |t|
      t.bigint :member_id, null: false
      t.bigint :event_id, null: false
      t.boolean :is_attended

      t.timestamps
    end
  end
end
