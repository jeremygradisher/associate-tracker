class CreateAssociateGresumes < ActiveRecord::Migration
  def change
    create_table :associate_gresumes do |t|
      t.integer :associate_id
      t.string :gresume

      t.timestamps null: false
    end
  end
end
