class CreateProjectPdocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :project_pdocuments do |t|
      t.integer :project_id
      t.string :pdocument

      t.timestamps null: false
    end
  end
end
