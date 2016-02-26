class AddAddressesToAssociates < ActiveRecord::Migration
  def change
    add_column :associates, :primary_street, :string
    add_column :associates, :primary_city, :string
    add_column :associates, :primary_state, :string
    add_column :associates, :primary_zip, :string
    add_column :associates, :business_street, :string
    add_column :associates, :business_city, :string
    add_column :associates, :business_state, :string
    add_column :associates, :business_zip, :string
  end
end
