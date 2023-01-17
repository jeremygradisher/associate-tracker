class CreateAssociateContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :associate_contracts do |t|
      t.integer :associate_id
      t.string :contract

      t.timestamps null: false
    end
  end
end
