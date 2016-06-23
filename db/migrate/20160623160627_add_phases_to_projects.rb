class AddPhasesToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :phases, :string
  end
end
