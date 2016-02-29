json.array!(@associate_w9s) do |associate_w9|
  json.extract! associate_w9, :id, :associate_id, :w9
  json.url associate_w9_url(associate_w9, format: :json)
end
