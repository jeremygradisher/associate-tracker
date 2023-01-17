class AddProjectStartAndProjectFinishToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :project_start, :string
    add_column :projects, :project_finish, :string
  end
end
