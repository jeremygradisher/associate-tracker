class AddGrandTotalToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :grand_total, :string
  end
end
