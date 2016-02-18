json.array!(@associate_resumes) do |associate_resume|
  json.extract! associate_resume, :id, :associate_id, :resume
  json.url associate_resume_url(associate_resume, format: :json)
end
