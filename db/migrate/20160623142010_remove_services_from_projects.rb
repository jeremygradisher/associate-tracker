class RemoveServicesFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :services, :string
  end
end
