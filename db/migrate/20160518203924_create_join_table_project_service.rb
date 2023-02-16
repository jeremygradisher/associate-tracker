class CreateJoinTableProjectService < ActiveRecord::Migration[5.0]
  def change
    create_join_table :projects, :services do |t|
      t.index [:project_id, :service_id]
      # t.index [:service_id, :project_id]
    end
  end
end
