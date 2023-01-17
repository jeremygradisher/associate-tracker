class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :project_street
      t.string :project_city
      t.string :project_state
      t.string :project_zip
      t.string :project_duration
      t.text :brief_description
      t.string :services
      t.text :staffing_notes
      t.string :deal_terms
      t.string :rate
      t.string :additional_terms
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
