class RemoveServicesFromProjects < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :services, :string
  end
end
