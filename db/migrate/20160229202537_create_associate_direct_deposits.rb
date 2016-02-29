class CreateAssociateDirectDeposits < ActiveRecord::Migration
  def change
    create_table :associate_direct_deposits do |t|
      t.integer :associate_id
      t.string :direct_deposit

      t.timestamps null: false
    end
  end
end
