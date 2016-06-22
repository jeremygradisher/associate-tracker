json.array!(@project_pdocuments) do |project_pdocument|
  json.extract! project_pdocument, :id, :project_id, :pdocument
  json.url project_pdocument_url(project_pdocument, format: :json)
end
