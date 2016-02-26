class CreateJoinTableAssociateWrkloc < ActiveRecord::Migration
  def change
    create_join_table :associates, :wrklocs do |t|
      # t.index [:associate_id, :wrkloc_id]
      # t.index [:wrkloc_id, :associate_id]
    end
  end
end
