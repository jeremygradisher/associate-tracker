class CreateAssociates < ActiveRecord::Migration[5.0]
  def change
    create_table :associates do |t|
      t.string :name
      t.string :phone_primary
      t.string :phone_cell
      t.string :email
      t.string :email_personal
      t.string :address_home
      t.string :address_business
      t.string :project_history
      t.string :position
      t.string :working_locations
      t.text :notes
      t.boolean :active
      t.string :ein_ss
      t.date :birthday
      t.string :family

      t.timestamps null: false
    end
  end
end
