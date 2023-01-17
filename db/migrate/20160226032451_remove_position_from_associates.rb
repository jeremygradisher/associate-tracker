class RemovePositionFromAssociates < ActiveRecord::Migration[5.0]
  def change
    remove_column :associates, :position, :string
  end
end
