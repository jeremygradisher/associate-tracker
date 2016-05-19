json.array!(@project_cicons) do |project_cicon|
  json.extract! project_cicon, :id, :project_id, :cicon
  json.url project_cicon_url(project_cicon, format: :json)
end
