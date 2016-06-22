json.array!(@project_pproposals) do |project_pproposal|
  json.extract! project_pproposal, :id, :project_id, :pproposal
  json.url project_pproposal_url(project_pproposal, format: :json)
end
