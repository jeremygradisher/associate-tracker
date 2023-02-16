class AddLinksToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :link, :text
  end
end
