class CreateAssociateW9s < ActiveRecord::Migration
  def change
    create_table :associate_w9s do |t|
      t.integer :associate_id
      t.string :w9

      t.timestamps null: false
    end
  end
end
