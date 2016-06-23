class RemoveClientProposalFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :client_proposal, :text
  end
end
