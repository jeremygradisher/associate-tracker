class RemoveAddressHomeFromAssociates < ActiveRecord::Migration[5.0]
  def change
    remove_column :associates, :address_home, :string
    remove_column :associates, :address_business, :string
  end
end