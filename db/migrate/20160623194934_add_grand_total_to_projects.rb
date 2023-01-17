class AddGrandTotalToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :grand_total, :string
  end
end
