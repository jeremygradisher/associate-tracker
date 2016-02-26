class RemoveWorkingLocationsFromAssociates < ActiveRecord::Migration
  def change
    remove_column :associates, :working_locations, :string
  end
end
