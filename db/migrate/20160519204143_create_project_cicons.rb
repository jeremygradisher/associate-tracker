class CreateProjectCicons < ActiveRecord::Migration[5.0]
  def change
    create_table :project_cicons do |t|
      t.integer :project_id
      t.string :cicon

      t.timestamps null: false
    end
  end
end
