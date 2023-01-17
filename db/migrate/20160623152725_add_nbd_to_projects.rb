class AddNbdToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :nbd, :string
  end
end
