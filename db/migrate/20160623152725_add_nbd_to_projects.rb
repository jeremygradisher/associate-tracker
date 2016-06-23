class AddNbdToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :nbd, :string
  end
end
