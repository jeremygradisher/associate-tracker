class CreateJoinTableAssociateProject < ActiveRecord::Migration
  def change
    create_join_table :associates, :projects do |t|
      t.index [:associate_id, :project_id]
      # t.index [:project_id, :associate_id]
    end
  end
end
