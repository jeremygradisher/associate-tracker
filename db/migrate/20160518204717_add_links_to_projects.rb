class AddLinksToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :link, :text
  end
end
