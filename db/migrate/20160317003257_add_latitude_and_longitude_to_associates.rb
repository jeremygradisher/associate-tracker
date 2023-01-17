class AddLatitudeAndLongitudeToAssociates < ActiveRecord::Migration[5.0]
  def change
    add_column :associates, :latitude, :float
    add_column :associates, :longitude, :float
  end
end
