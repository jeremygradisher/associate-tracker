json.array!(@project_pw9s) do |project_pw9|
  json.extract! project_pw9, :id, :project_id, :pw9
  json.url project_pw9_url(project_pw9, format: :json)
end
