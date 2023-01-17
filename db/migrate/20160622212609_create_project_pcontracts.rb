class CreateProjectPcontracts < ActiveRecord::Migration[5.0]
  def change
    create_table :project_pcontracts do |t|
      t.integer :project_id
      t.string :pcontract

      t.timestamps null: false
    end
  end
end
