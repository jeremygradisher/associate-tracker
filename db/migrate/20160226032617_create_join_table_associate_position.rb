class CreateJoinTableAssociatePosition < ActiveRecord::Migration[5.0]
  def change
    create_join_table :associates, :positions do |t|
      t.index [:associate_id, :position_id]
      # t.index [:position_id, :associate_id]
    end
  end
end
