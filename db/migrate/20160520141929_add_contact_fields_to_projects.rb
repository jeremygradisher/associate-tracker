class AddContactFieldsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :client_contact, :string
    add_column :projects, :client_meeting, :string
    add_column :projects, :client_proposal, :text
    add_column :projects, :client_billing, :string
    add_column :projects, :client_street, :string
    add_column :projects, :client_city, :string
    add_column :projects, :client_state, :string
    add_column :projects, :client_zip, :string
  end
end
