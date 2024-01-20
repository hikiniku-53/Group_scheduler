class CreateMembershipFees < ActiveRecord::Migration[6.1]
  def change
    create_table :membership_fees do |t|

      t.timestamps
    end
  end
end
