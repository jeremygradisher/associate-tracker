class AddPhasesToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :phases, :string
  end
end
