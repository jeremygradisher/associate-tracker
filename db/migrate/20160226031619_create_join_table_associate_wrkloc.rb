class CreateJoinTableAssociateWrkloc < ActiveRecord::Migration[5.0]
  def change
    create_join_table :associates, :wrklocs do |t|
      # t.index [:associate_id, :wrkloc_id]
      # t.index [:wrkloc_id, :associate_id]
    end
  end
end
