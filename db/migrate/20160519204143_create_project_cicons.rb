class CreateProjectCicons < ActiveRecord::Migration
  def change
    create_table :project_cicons do |t|
      t.integer :project_id
      t.string :cicon

      t.timestamps null: false
    end
  end
end
