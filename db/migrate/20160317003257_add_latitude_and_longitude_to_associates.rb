class AddLatitudeAndLongitudeToAssociates < ActiveRecord::Migration
  def change
    add_column :associates, :latitude, :float
    add_column :associates, :longitude, :float
  end
end
