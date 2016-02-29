class CreateAssociateDriversInsurances < ActiveRecord::Migration
  def change
    create_table :associate_drivers_insurances do |t|
      t.integer :associate_id
      t.string :drivers_insurance

      t.timestamps null: false
    end
  end
end
