class CreateProjectPcontracts < ActiveRecord::Migration
  def change
    create_table :project_pcontracts do |t|
      t.integer :project_id
      t.string :pcontract

      t.timestamps null: false
    end
  end
end
