class CreateProjectPicons < ActiveRecord::Migration[5.0]
  def change
    create_table :project_picons do |t|
      t.integer :project_id
      t.string :picon

      t.timestamps null: false
    end
  end
end
