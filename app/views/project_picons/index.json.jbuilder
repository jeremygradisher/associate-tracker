json.array!(@project_picons) do |project_picon|
  json.extract! project_picon, :id, :project_id, :picon
  json.url project_picon_url(project_picon, format: :json)
end
