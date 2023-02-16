class CreateProjectPrevcontracts < ActiveRecord::Migration[5.0]
  def change
    create_table :project_prevcontracts do |t|
      t.integer :project_id
      t.string :prevcontract

      t.timestamps null: false
    end
  end
end
