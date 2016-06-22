json.array!(@project_pcontracts) do |project_pcontract|
  json.extract! project_pcontract, :id, :project_id, :pcontract
  json.url project_pcontract_url(project_pcontract, format: :json)
end
