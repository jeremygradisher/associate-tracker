class CreateProjectPrevcontracts < ActiveRecord::Migration
  def change
    create_table :project_prevcontracts do |t|
      t.integer :project_id
      t.string :prevcontract

      t.timestamps null: false
    end
  end
end
