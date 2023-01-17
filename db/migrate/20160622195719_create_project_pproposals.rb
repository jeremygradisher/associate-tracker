class CreateProjectPproposals < ActiveRecord::Migration[5.0]
  def change
    create_table :project_pproposals do |t|
      t.integer :project_id
      t.string :pproposal

      t.timestamps null: false
    end
  end
end
