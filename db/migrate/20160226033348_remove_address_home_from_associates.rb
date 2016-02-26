class RemoveAddressHomeFromAssociates < ActiveRecord::Migration
  def change
    remove_column :associates, :address_home, :string
    remove_column :associates, :address_business, :string
  end
end