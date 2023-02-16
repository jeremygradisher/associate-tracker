class CreateAssociateDriversLicenses < ActiveRecord::Migration[5.0]
  def change
    create_table :associate_drivers_licenses do |t|
      t.integer :associate_id
      t.string :drivers_license

      t.timestamps null: false
    end
  end
end
