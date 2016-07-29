class RemoveClientBillingFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :client_billing, :string
  end
end
