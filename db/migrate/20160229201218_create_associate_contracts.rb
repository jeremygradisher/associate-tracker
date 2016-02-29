class CreateAssociateContracts < ActiveRecord::Migration
  def change
    create_table :associate_contracts do |t|
      t.integer :associate_id
      t.string :contract

      t.timestamps null: false
    end
  end
end
