json.array!(@associate_gresumes) do |associate_gresume|
  json.extract! associate_gresume, :id, :associate_id, :gresume
  json.url associate_gresume_url(associate_gresume, format: :json)
end
