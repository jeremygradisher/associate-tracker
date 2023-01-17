class CreateJoinTableAssociateProject < ActiveRecord::Migration[5.0]
  def change
    create_join_table :associates, :projects do |t|
      t.index [:associate_id, :project_id]
      # t.index [:project_id, :associate_id]
    end
  end
end
