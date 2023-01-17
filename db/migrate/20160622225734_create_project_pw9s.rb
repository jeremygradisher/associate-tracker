class CreateProjectPw9s < ActiveRecord::Migration[5.0]
  def change
    create_table :project_pw9s do |t|
      t.integer :project_id
      t.string :pw9

      t.timestamps null: false
    end
  end
end
