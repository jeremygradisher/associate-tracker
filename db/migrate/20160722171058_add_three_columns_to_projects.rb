class AddThreeColumnsToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :email, :string
    add_column :projects, :telephone, :string
    add_column :projects, :correspondence_notes, :text
  end
end
