class CreateWrklocs < ActiveRecord::Migration
  def change
    create_table :wrklocs do |t|
      t.string :wrkstate

      t.timestamps null: false
    end
  end
end
