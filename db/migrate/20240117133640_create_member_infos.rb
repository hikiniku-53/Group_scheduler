class CreateMemberInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :member_infos do |t|
      t.bigint :group_id, null: false
      t.bigint :member_id, null: false
      t.boolean :is_admin, null: false
      t.timestamps
    end
  end
end
