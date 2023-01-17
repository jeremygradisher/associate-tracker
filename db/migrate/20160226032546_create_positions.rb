class CreatePositions < ActiveRecord::Migration[5.0]
  def change
    create_table :positions do |t|
      t.string :pos_name

      t.timestamps null: false
    end
  end
end
