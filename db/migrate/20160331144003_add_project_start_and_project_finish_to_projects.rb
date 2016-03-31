class AddProjectStartAndProjectFinishToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :project_start, :string
    add_column :projects, :project_finish, :string
  end
end
