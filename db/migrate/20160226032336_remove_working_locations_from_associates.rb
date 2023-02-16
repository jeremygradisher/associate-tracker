class RemoveWorkingLocationsFromAssociates < ActiveRecord::Migration[5.0]
  def change
    remove_column :associates, :working_locations, :string
  end
end
