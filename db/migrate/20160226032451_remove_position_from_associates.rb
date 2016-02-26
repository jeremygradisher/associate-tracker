class RemovePositionFromAssociates < ActiveRecord::Migration
  def change
    remove_column :associates, :position, :string
  end
end
