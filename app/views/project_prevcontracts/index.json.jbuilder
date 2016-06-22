json.array!(@project_prevcontracts) do |project_prevcontract|
  json.extract! project_prevcontract, :id, :project_id, :prevcontract
  json.url project_prevcontract_url(project_prevcontract, format: :json)
end
