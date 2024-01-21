class CreateMembershipFees < ActiveRecord::Migration[6.1]
  def change
    create_table :membership_fees do |t|
      t.bigint :member_id, null: false
      t.integer :fee, null: false
      t.integer :fee_type, null: false #enum管理
      t.boolean :is_paid, null: false, default: false

      t.timestamps
    end
  end
end
