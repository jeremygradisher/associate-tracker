class RemoveClientProposalFromProjects < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :client_proposal, :text
  end
end
