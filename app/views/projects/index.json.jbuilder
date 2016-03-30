json.array!(@projects) do |project|
  json.extract! project, :id, :name, :project_street, :project_city, :project_state, :project_zip, :project_duration, :brief_description, :services, :staffing_notes, :deal_terms, :rate, :additional_terms, :latitude, :longitude
  json.url project_url(project, format: :json)
end
