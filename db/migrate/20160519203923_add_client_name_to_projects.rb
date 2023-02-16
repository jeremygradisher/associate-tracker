class AddClientNameToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :client_name, :string
  end
end
