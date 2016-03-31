class RemoveProjectDurationFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :project_duration, :string
  end
end
